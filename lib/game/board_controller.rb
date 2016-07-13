module Game
  class BoardController
    def initialize
      @chess_board = {}
    end

    def self.chess_reset
      new.tap do |chess_board|
        chess_board[[1, 1]] = Figure::Rook.new(1, 1)
        chess_board[[2, 1]] = Figure::Knight.new(2, 1)
        chess_board[[3, 1]] = Figure::Bishop.new(3, 1)
        chess_board[[4, 1]] = Figure::Queen.new(4, 1)
        chess_board[[5, 1]] = Figure::King.new(5, 1)
        chess_board[[6, 1]] = Figure::Bishop.new(6, 1)
        chess_board[[7, 1]] = Figure::Knight.new(7, 1)
        chess_board[[8, 1]] = Figure::Rook.new(8, 1)
        for i in 1..8
          chess_board[[i, 2]] = Figure::Pawn.new(i, 2)
        end
      end
    end

    private

    def add_figure(x, y, type)
      chess_board[[x, y]] = figure(x, y, type)
    end

    def figure(x, y, type)
      figure_const(type).new(x, y)
    end

    def figure_const(type)
      Support::FetchAClass.new(type)
    end

    def tap
    end
  end
end
