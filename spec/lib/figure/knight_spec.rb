require 'figure/knight'

describe Figure::Knight do
  describe '#moves' do
    let(:knight_moves) { [[2, 3], [2, 5], [3, 2], [3, 6], [5, 6], [6, 3], [6, 5], [5, 2]] }

    it 'returns array of not filtered potential coordinates' do
      expect(described_class.new([4, 4]).moves).to match_array knight_moves
    end
  end
end
