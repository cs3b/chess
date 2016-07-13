module Game
  class BoardController
    def initialize
      @chess_board = {}
    end

    def self.white_reset
      new.tap do |chess_board|
        add_figure(1, 1, Rook)
        add_figure(2, 1, Knight)
        add_figure(3, 1, Bishop)
        add_figure(4, 1, Queen)
        add_figure(5, 1, King)
        add_figure(6, 1, Bishop)
        add_figure(7, 1, Knight)
        add_figure(8, 1, Rook)
        8.times { |i| add_figure(i + 1, 2, Pawn) }
      end
    end

    def self.black_reset
      new.tap do |chess_board|
        add_figure(1, 8, 'black', Rook)
        add_figure(2, 8, 'black', Knight)
        add_figure(3, 8, 'black', Bishop)
        add_figure(4, 8, 'black', King)
        add_figure(5, 8, 'black', Queen)
        add_figure(6, 8, 'black', Bishop)
        add_figure(7, 8, 'black', Knight)
        add_figure(8, 8, 'black', Rook)
        8.times { |i| add_figure(i + 1, 7, 'black', Pawn) }
      end
    end

    private

    def add_figure(x, y, color, type)
      chess_board[[x, y]] = figure(x, y, color, type)
    end

    def figure(x, y, color, type)
      figure_const(type).new(x, y, color)
    end

    def figure_const(type)
      Support::FetchAClass.new(type)
    end

    def tap
    end
  end
end

# for i in 1..8
#   chess_board[[i, 2]] = Figure::Pawn.new(i, 2)
# end
