require 'figure/base'

module Figure
  class Rook < Base
    def vectors
      range.flat_map { |distance| directions.map { |direction| direction * distance }.each_slice(2).to_a }
    end

    protected

    def range
      (1..7)
    end

    private

    def directions
      [NORTH_SOUTH, WEST_EAST].flatten
    end
  end
end
