require 'figure/base'

module Figure
  class Pawn < Base
    VECTORS_NORTH = [[0, +1], [0, +2]].flatten
    VECTORS_SOUTH = [[0, -1], [0, -2]].flatten
    RANGE = (1..1)

    def first_move?
      (y == 2 && @color == 'white') || (y == 7 && @color == 'black')
    end

    def directions
      @color == 'white' ? vector_directions(VECTORS_NORTH) : vector_directions(VECTORS_SOUTH)
    end

    def vector_directions(vector)
      first_move? ? vector[0..3] : vector[0..1]
    end

    def vectors
      RANGE.flat_map { |distance| directions.map { |direction| direction * distance }.each_slice(2).to_a }
    end
    private


  end
end
