require 'figure/base'

module Figure
  class King < Base
    def vectors
      RANGE.flat_map { |distance| directions.map { |direction| direction * distance }.each_slice(2).to_a }
    end

    private

    RANGE = (1..1)
    def directions
      [NORTH_SOUTH, WEST_EAST, N_WEST_S_EAST, N_EAST_S_WEST].flatten
    end
  end
end
