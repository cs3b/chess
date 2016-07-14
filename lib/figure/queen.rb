require 'figure/base'

module Figure
  class Queen < Base
    def vectors
      Bishop::VECTORS + Rook::VECTORS
    end

    def to_s
      'Q'
    end
  end
end
