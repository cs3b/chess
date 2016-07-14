require 'figure/base'

module Figure
  class Pawn < Base
    attr_reader :color, :first_move

    VECTOR_NORTH = [[0, +1], [0, +2]].freeze
    VECTOR_SOUTH = [[0, -1], [0, -2]].freeze

    def post_initialize(_args)
      @moved = true
    end

    def first_move?
      (y == 2 && color == 'white') || (y == 7 && color == 'black')
    end

    def vectors
      first_move? ? direction_vectors[0..1] : direction_vectors[0..0]
    end

    private

    def direction_vectors
      color == 'white' ? VECTOR_NORTH : VECTOR_SOUTH
    end
  end
end
