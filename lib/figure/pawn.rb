require 'figure/base'

module Figure
  class Pawn < Base
    attr_reader :moved

    VECTOR_NORTH = [[0, +1], [0, +2]].freeze
    VECTOR_SOUTH = [[0, -1], [0, -2]].freeze

    def post_initialize(_args)
      @moved = false
    end

    def vectors
      moved ? direction_vectors[0..0] : direction_vectors[0..1]
    end

    private

    def direction_vectors
      color == 'white' ? VECTOR_NORTH : VECTOR_SOUTH
    end
  end
end
