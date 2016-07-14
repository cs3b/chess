require 'figure/base'

module Figure
  class Knight < Base
    VECTORS = [[-2, -1], [-2, +1], [-1, -2], [-1, +2], [+1, -2], [+1, +2], [+2, -1], [+2, +1]].freeze

    def vectors
      VECTORS
    end
  end
end
