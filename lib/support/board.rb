module Support
  class Board
    def on_board?(coord_x, coord_y)
      (1..8).cover?(coord_x) && (1..8).cover?(coord_y)
    end
  end
end
