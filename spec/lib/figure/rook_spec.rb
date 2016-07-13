require 'figure/rook'

describe Figure::Rook do
  let(:rook) { Figure::Rook.new([2, 2]) }

  describe '#moves' do
    let(:rook_moves) do
      [[3, 2], [1, 2], [2, 3], [2, 1], [4, 2], [0, 2], [2, 4], [2, 0], [5, 2],
       [-1, 2], [2, 5], [2, -1], [6, 2], [-2, 2], [2, 6], [2, -2], [7, 2], [-3, 2],
       [2, 7], [2, -3], [8, 2], [-4, 2], [2, 8], [2, -4], [9, 2], [-5, 2], [2, 9], [2, -5]].sort
    end

    it 'returns array of not filtered potential coordinates' do
      expect(rook.moves.sort).to eql rook_moves
    end
  end
end
