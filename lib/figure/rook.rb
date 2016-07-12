require 'figure/base'

module Figure
  class Rook < Base
    RANGE = (1..7)
    def directions
      [NORTH_SOUTH, WEST_EAST].flatten
    end

    def vectors
      RANGE.flat_map { |distance| directions.map { |direction| direction * distance }.each_slice(2).to_a }
    end
  end
end
