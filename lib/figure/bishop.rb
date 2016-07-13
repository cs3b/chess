require 'figure/base'

module Figure
  class Bishop < Base
    VECTORS = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7],
               [1, -1], [2, -2], [3, -3], [4, -4], [5, -5], [6, -6], [7, -7],
               [-1, 1], [-2, 3], [-3, 3], [-4, 4], [-5, 5], [-6, 6], [-7, 7],
               [-1, -1], [-2, -2], [-3, -3], [-4, 4], [-5, -5], [-6, -6], [-7, -7]].freeze

    def vectors
      VECTORS
    end
    def to_s
      'b'
    end
  end
end
