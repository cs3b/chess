module Support
  module MovesHelper
    SCOPE = (1..8)
    def can_attack?(position, move)
      @chess_board[position].color != @chess_board[move].color
    end

    def valid_move?(move)
      @chess_board[move].nil?
    end

    def possible_moves(x, y)
      @chess_board[[x, y]].moves.select { |move| on_board?(move) && (valid_move?(move) || can_attack?([x, y], move)) }
    end

    def on_board?(move)
      SCOPE.cover?(move.first) && SCOPE.cover?(move.last)
    end

    def figure_coords_after_move(position, destination)
      if possible_moves(*position).include?(destination)
        @chess_board[destination] = @chess_board[position].tap { |figure| figure.x, figure.y = destination }
      else
        @chess_board[position]
      end
    end
  end
end
