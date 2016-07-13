require 'figure/base'

module Figure
  class Rook < Base
    VECTORS = [[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7],
               [1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0],
               [-1, 0], [-2, 0], [-3, 0], [-4, 0], [-5, 0], [-6, 0], [-7, 0],
               [0, -1], [0, -2], [0, -3], [0, -4], [0, -5], [0, -6], [0, -7]].freeze

    def vectors
      VECTORS
    end
    def to_s
      'r'
    end
  end
end
