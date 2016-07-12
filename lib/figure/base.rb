module Figure
  class Base
    attr_reader :x, :y, :color

    CHARACTERS_MAP = ' abcdefgh'.freeze

    def initialize(x, y, color = white, properties = {})
      @x = x
      @y = y
      @color = color
      post_initialize(properties)
    end

    def on_board_moves
      moves.select { |move| on_board?(move.first, move.last) }
    end

    protected

    def x_to_number
      CHARACTERS_MAP.index(x)
    end

    def on_board?(coord_x, coord_y)
      (1..8).cover?(coord_x) && (1..8).cover?(coord_y)
    end

    def post_initialize(properties)
    end

    def moves
      vectors.map { |vector_x, vector_y| [x_to_number + vector_x, y.to_i + vector_y] }
    end

    def vectors
      raise NotImplementedError
    end
  end
end
