module Figure
  class Base
    attr_reader :x, :y, :color

    RANGE = 1..8

    def initialize(x, y, properties = {})
      @x = x
      @y = y
      @color = properties[:color] || 'white'
      post_initialize(properties)
    end

    def possible_coordinates
      moves.select { |move| on_board?(move.first, move.last) }
    end

    protected

    def on_board?(x, y)
      RANGE.cover?(x) && RANGE.cover?(y)
    end

    def moves
      vectors.map { |vector_x, vector_y| [x + vector_x, y + vector_y] }
    end

    def vectors
      raise NotImplementedError
    end

    def post_initialize(properties)
    end
  end
end
