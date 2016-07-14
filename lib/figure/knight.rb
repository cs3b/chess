require 'figure/base'

module Figure
  class Knight < Base
    VECTORS = [[1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1], [-1, 2]].freeze

    def vectors
      VECTORS
    end

    def to_s
      'k'
    end
  end
end
