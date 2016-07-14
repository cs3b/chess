require 'figure/rook'

describe Figure::Rook do
  let(:rook) { Figure::Rook.new(*position) }

  describe '#possible_coordinates' do
    context 'in corner of board' do
      let(:position) { [1, 1] }
      it 'returns 21 moves' do
        expect(rook.possible_coordinates).to contain_exactly(
          [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8],
          [2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1], [8, 1]
        )
      end
    end

    context 'from middle of board' do
      let(:position) { [4, 4] }
      it 'returns 14 moves' do
        expect(rook.possible_coordinates).to contain_exactly(
          [1, 4], [2, 4], [3, 4], [5, 4], [6, 4], [7, 4], [8, 4],
          [4, 1], [4, 2], [4, 3], [4, 5], [4, 6], [4, 7], [4, 8]
        )
      end
    end
  end
end
