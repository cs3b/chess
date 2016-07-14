module Figure
  class Base
    attr_reader :x, :y, :color

    def initialize(x, y, color = 'white')
      @x = x
      @y = y
      @color = color
      @board = Support::Board.new
    end

    def possible_coordinates
      all_coordinates.select { |move| @board.on_board?(move.first, move.last) }
    end

    def to_s
      raise NotImplementedError
    end

    protected

    def all_coordinates
      vectors.map { |vector_x, vector_y| [x + vector_x, y + vector_y] }
    end

    def post_initialize(properties)
    end

    def vectors
      raise NotImplementedError
    end
  end
end
