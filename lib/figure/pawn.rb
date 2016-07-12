require 'figure/base'

module Figure
  class Pawn < Base
    attr_reader :color, :first_move

    VECTORS_NORTH = [[0, 1], [0, 2]].freeze
    VECTORS_SOUTH = [[0, -1], [0, -2]].freeze

    def post_initialize(_properties)
      @first_move = true
    end

    def direction_vectors
      color == 'white' ? VECTORS_SOUTH : VECTORS_NORTH
    end

    def vectors
      first_move ? direction_vectors[0..1] : direction_vectors[0..0]
    end
  end
end
