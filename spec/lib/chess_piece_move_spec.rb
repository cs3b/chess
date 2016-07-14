require 'chess_piece_move'

describe ChessPieceMove do
  describe '#possible_positions' do
    context 'for g2' do
      let(:chess_piece_move) { described_class.new('g2', FigureMoveDouble) }

      before do
        class FigureMoveDouble
          def initialize(_coordinate, _color)
          end

          def possible_moves
            [[2, 3], [3, 2]]
          end
        end
        # FigureMoveDouble = Struct.new(:coordinate) do
        #  def possible_moves
        #    [[2, 3], [3, 2]]
        #  end
        # end
      end

      it 'returns "b3 c2"' do
        expect(chess_piece_move.possible_positions).to match_array %w(b3 c2)
      end
    end
  end
end
