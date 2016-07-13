module Game
  class BoardController
    def initialize
      @chess_board = {}
    end

    def self.white_reset
      new.tap do |chess_board|
        add_figure(1, 1, type: Rook)
        add_figure(2, 1, type: Knight)
        add_figure(3, 1, type: Bishop)
        add_figure(4, 1, type: Queen)
        add_figure(5, 1, type: King)
        add_figure(6, 1, type: Bishop)
        add_figure(7, 1, type: Knight)
        add_figure(8, 1, type: Rook)
        8.times { |i| add_figure(i + 1, 2, type: Pawn) }
      end
    end

    def self.black_reset
      new.tap do |chess_board|
        add_figure(1, 8, color: 'black', type: Rook)
        add_figure(2, 8, color: 'black', type: Knight)
        add_figure(3, 8, color: 'black', type: Bishop)
        add_figure(4, 8, color: 'black', type: King)
        add_figure(5, 8, color: 'black', type: Queen)
        add_figure(6, 8, color: 'black', type: Bishop)
        add_figure(7, 8, color: 'black', type: Knight)
        add_figure(8, 8, color: 'black', type: Rook)
        8.times { |i| add_figure(i + 1, 7, color: 'black', type: Pawn) }
      end
    end

    private

    def add_figure(x, y, attributes = {})
      chess_board[[x, y]] = figure(x, y, attributes[:color] = attributes[:color] || 'white', attributes[:type])
    end

    def figure(x, y, attributes = {})
      figure_const(attributes[:type]).new(x, y, attributes[:color] = attributes[:color] || 'white')
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
