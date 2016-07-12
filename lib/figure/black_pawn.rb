require 'figure/base'

module Figure
  class BlackPawn < Base
    VECTORS_SOUTH = [[0, -1], [0, -2]].flatten
    RANGE = (1..1)

    def post_initialize(properties)
      @properties = properties
      @touched = false
    end

    def first_move?
      y == 7
    end

    def directions
      first_move? ? VECTORS_SOUTH[0..3] : VECTORS_SOUTH[0..1]
    end

    def vectors
      RANGE.flat_map { |distance| directions.map { |direction| direction * distance }.each_slice(2).to_a }
    end
  end
end
