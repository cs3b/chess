require 'support/transform_position'

module Figure
  class Base
    attr_reader :x, :y, :color

    include Support::TransformPosition
    NORTH_SOUTH = [[0, 1], [0, -1]].freeze
    WEST_EAST = [[-1, 0], [1, 0]].freeze
    N_EAST_S_WEST = [[-1, -1], [1, 1]].freeze
    N_WEST_S_EAST = [[-1, 1], [1, -1]].freeze

    def initialize(position, color = 'white')
      @x, @y = position
      @color = color
    end

    def moves
      vectors.map { |vector_x, vector_y| [x + vector_x, y + vector_y] }
    end

    private

    def vectors
      range.flat_map { |distance| directions.map { |direction| direction * distance }.each_slice(2).to_a }
    end
  end
end
