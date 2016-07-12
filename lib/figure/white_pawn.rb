require 'figure/base'

module Figure
  class WhitePawn < Base
    VECTORS_NORTH = [[0, +1], [0, +2]].freeze
    VECTORS_SOUTH = [[0, -1], [0, -2]].freeze

    def post_initialize(properties)
      @properties = properties
      @touched = false
    end

    private

    def white?
      @properties[:color] == 'white'
    end

    def first_move?
      @touched
    end

    def direction_vectors
      white? ? VECTORS_NORTH : VECTORS_SOUTH
    end

    def vectors
      first_move? ? direction_vectors[0..0] : direction_vectors[0..1]
    end

    def moves
      vectors.map { |vector_x, vector_y| [x + vector_x, y + vector_y] }
    end
  end
end
