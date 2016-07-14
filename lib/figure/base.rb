module Figure
  class Base
    attr_reader :x, :y, :color

    RANGE = 1..8

    def initialize(x, y, color = 'white')
      @x = x
      @y = y
      @color = color
    end

    def possible_coordinates
      moves.select { |move| on_board?(move.first, move.last) }
    end

    def vectors
      raise NotImplementedError
    end

    protected

    def on_board?(x, y)
      RANGE.cover?(x) && RANGE.cover?(y)
    end

    def moves
      vectors.map { |vector_x, vector_y| [x + vector_x, y + vector_y] }
    end

    def post_initialize(properties)
    end
  end
end
