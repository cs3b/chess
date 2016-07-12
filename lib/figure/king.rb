require 'figure/base'

module Figure
  class King < Base
    VECTORS = [[1, 1], [1, 0], [1, -1], [0, -1], [-1, -1], [-1, 0], [-1, 1], [0, 1]].freeze

    def vectors
      VECTORS
    end
  end
end
