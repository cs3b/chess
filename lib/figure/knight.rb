require 'figure/base'

module Figure
  class Knight < Base
    RANGE = (1..1)
    def directions
      [[-2, -1], [-2, +1], [-1, -2], [-1, +2], [+1, -2], [+1, +2], [+2, -1], [+2, +1]].flatten
    end

    def vectors
      RANGE.flat_map { |distance| directions.map { |direction| direction * distance }.each_slice(2).to_a }
    end
  end
end
