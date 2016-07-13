module Figure
  class Base
    attr_reader :x, :y

    SCOPE = (1..8)

    def initialize(x, y, properties = {})
      @x = x
      @y = y
      post_initialize(properties)
    end

    def possible_coordinates
      moves.select { |move| on_board?(move.first, move.last) }
    end

    def on_board?(x, y)
      SCOPE.cover?(x) && SCOPE.cover?(y)
    end

    def post_initialize(properties)
    end
  end
end
