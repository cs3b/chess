module Support
  class Board
    SIZE = 8

    def on_board?(coord_x, coord_y)
      range.cover?(coord_x) && range.cover?(coord_y)
    end

    private

    def range
      1..SIZE
    end
  end
end
