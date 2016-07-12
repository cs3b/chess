require 'support/transform_position'

module Figure
  class Base
    attr_reader :x, :y

    include Support::TransformPosition
    SCOPE = (1..8)
    NORTH_SOUTH = [[0, 1], [0, -1]].freeze
    WEST_EAST = [[-1, 0], [1, 0]].freeze
    N_EAST_S_WEST = [[-1, -1], [1, 1]].freeze
    N_WEST_S_EAST = [[-1, 1], [1, -1]].freeze

    def initialize(position, properties = {})
      @x = position.first
      @y = position.last
      post_initialize(properties)
    end

    def post_initialize(properties)
    end

    def possible_moves
      moves.select { |move| on_board?(move.first, move.last) }
    end

    def on_board?(x, y)
      SCOPE.cover?(x) && SCOPE.cover?(y)
    end

    def moves
      vectors.map { |vector_x, vector_y| [x + vector_x, y + vector_y] }
    end
  end
end
