require 'figure/base'
module Figure
  class Knight < Base
    VECTORS = [[-2, -1], [-2, +1], [-1, -2], [-1, +2], [+1, -2], [+1, +2], [+2, -1], [+2, +1]].freeze

    def moves
      VECTORS.map { |vector_x, vector_y| [@x + vector_x, @y + vector_y] }
    end
  end
end
