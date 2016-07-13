require 'figure/base'

module Figure
  class Pawn < Base
    VECTOR_START = [[+2, 0]].freeze
    VECTOR_MOVE = [[+1, 0]].freeze

    def moves
      if @x == 2
        VECTOR_START.map { |vector_x, vector_y| [@x + vector_x, @y + vector_y] }
      else
        VECTOR_MOVE.map { |vector_x, vector_y| [@x + vector_x, @y + vector_y] }
      end
    end
  end
end
