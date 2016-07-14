require 'support/fetch_figure_class'

describe Support::FetchFigureClass do
  before do
    class ChessPieceMoveMock
      include Support::FetchFigureClass
    end
  end

  describe '#figure_move_class' do
    before { ARGV[1] = 'Knight' }

    let(:chess_piece_move) { ChessPieceMoveMock.new }

    it 'returns correct const' do
      expect(chess_piece_move.figure_move_class).to eql Figure::Knight
    end
  end
end
