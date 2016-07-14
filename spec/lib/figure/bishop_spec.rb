require 'figure/bishop'

describe Figure::Bishop do
  let(:bishop) { described_class.new(starting_position) }

  describe '#vectors' do
    context 'one field away from the bottm left corner' do
      let(:starting_position) { [2, 2] }
      let(:bishop_moves) do
        [[3, 3], [3, 1], [1, 1], [1, 3], [4, 4], [4, 0], [0, 0], [0, 4], [5, 5], [5, -1], [-1, -1], [-1, 5], [6, 6],
         [6, -2], [-2, -2], [-2, 6], [7, 7], [7, -3], [-3, -3], [-3, 7], [8, 8], [8, -4], [-4, -4], [-4, 8], [9, 9],
         [9, -5], [-5, -5], [-5, 9]]
      end

      it 'returns an array of not filtered coordinates' do
        expect(bishop.moves).to match_array bishop_moves
      end
    end
  end
end
