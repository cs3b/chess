require 'figure/base'

module Figure
  class Pawn < Base
    attr_reader :color, :first_move

    VECTORS_NORTH = [[0, 1], [0, 2]].freeze
    VECTORS_SOUTH = [[0, -1], [0, -2]].freeze

    def first_move?
      (y == 2 && color == 'white') || (y == 7 && color == 'black')
    end

    def vectors
      first_move? ? direction_vectors[0..1] : direction_vectors[0..0]
    end

    def to_s
      'p'
    end

    private

    def direction_vectors
      color == 'white' ? VECTORS_NORTH : VECTORS_SOUTH
    end
  end
end
