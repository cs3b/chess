module Figure
  class Base
    attr_reader :x, :y, :color

    def initialize(x, y, color = 'white', properties = {})
      @x = x
      @y = y
      @color = color
      post_initialize(properties)
    end

    def possible_coordinates
      all_coordinates.select { |move| on_board?(move.first, move.last) }
    end

    protected

    def all_coordinates
      vectors.map { |vector_x, vector_y| [x + vector_x, y + vector_y] }
    end

    def on_board?(coord_x, coord_y)
      (1..8).cover?(coord_x) && (1..8).cover?(coord_y)
    end

    def post_initialize(properties)
    end

    def vectors
      raise NotImplementedError
    end
  end
end
