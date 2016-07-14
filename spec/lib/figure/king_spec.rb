require 'figure/king'

describe Figure::King do
  let(:king) { Figure::King.new(*position) }

  describe '#possible_coordinates' do
    context 'at least 1 place from border' do
      let(:position) { [1, 3] }
      it 'returns 5 moves' do
        expect(king.possible_coordinates).to contain_exactly([1, 2], [2, 2], [2, 3], [2, 4], [1, 4])
      end
    end

    context 'in the middle of the board' do
      let(:position) { [4, 4] }
      it 'returns 8 moves' do
        expect(king.possible_coordinates).to contain_exactly([3, 3], [4, 3], [5, 3], [5, 4], [5, 5], [4, 5], [3, 5], [3, 4])
      end
    end
  end
end
