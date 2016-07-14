require 'figure/king'

describe Figure::King do
  let(:king) { described_class.new(starting_position) }

  describe '#vectors' do
    context 'in bottom left corner' do
      let(:starting_position) { [1, 1] }
      let(:king_moves) { [[1, 2], [2, 2], [2, 1], [2, 0], [1, 0], [0, 0], [0, 1], [0, 2]] }

      it 'returns an array of not filtered coordinates' do
        expect(king.moves).to match_array king_moves
      end
    end
  end
end
