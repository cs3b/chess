require 'figure/base'

module Figure
  class Bishop < Base
    RANGE = (1..7)
    def directions
      [N_WEST_S_EAST, N_EAST_S_WEST].flatten
    end

    def vectors
      RANGE.flat_map { |distance| directions.map { |direction| direction * distance }.each_slice(2).to_a }
    end
  end
end
