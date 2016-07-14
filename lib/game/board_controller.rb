module Game
  class BoardController
    def initialize
      @chess_board = {}
    end

    def self.default
      new.tap do |chess_board|
        chess_board.white_reset
        chess_board.black_reset
      end
    end

    def white_reset
        add_figure(1, 1, figure: Figure::Rook)
        add_figure(2, 1, figure: Figure::Knight)
        add_figure(3, 1, figure: Figure::Bishop)
        add_figure(4, 1, figure: Figure::Queen)
        add_figure(5, 1, figure: Figure::King)
        add_figure(6, 1, figure: Figure::Bishop)
        add_figure(7, 1, figure: Figure::Knight)
        add_figure(8, 1, figure: Figure::Rook)
        8.times { |i| add_figure(i + 1, 2, figure: Figure::Pawn) }
    end

    def black_reset
        add_figure(1, 8, color: 'black', figure: Figure::Rook)
        add_figure(2, 8, color: 'black', figure: Figure::Knight)
        add_figure(3, 8, color: 'black', figure: Figure::Bishop)
        add_figure(4, 8, color: 'black', figure: Figure::King)
        add_figure(5, 8, color: 'black', figure: Figure::Queen)
        add_figure(6, 8, color: 'black', figure: Figure::Bishop)
        add_figure(7, 8, color: 'black', figure: Figure::Knight)
        add_figure(8, 8, color: 'black', figure: Figure::Rook)
        8.times { |i| add_figure(i + 1, 7, color: 'black', figure: Figure::Pawn) }
    end

    def to_s
      (1..8).to_a.reverse.map do |y|
      (1..8).each.with_object("") do |x, memo|
            memo << (@chess_board.fetch([x,y], " ").to_s)
        end
      end.join("\n")
    end

    private

    def add_figure(x, y, color: 'white', figure: Figure::Pawn)
      @chess_board[[x, y]] = figure.new(x, y, color)
    end
  end
end

# for i in 1..8
#   chess_board[[i, 2]] = Figure::Pawn.new(i, 2)
# end
