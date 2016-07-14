require 'figure/knight'

describe Figure::Knight do
  let(:knight) { Figure::Knight.new(*position) }

  describe '#possible_coordinates' do
    context 'at least 1 place from border' do
      let(:position) { [1, 1] }
      it 'returns 2 moves' do
        expect(knight.possible_coordinates).to contain_exactly([2, 3], [3, 2])
      end
    end

    context 'in the middle of the board' do
      let(:position) { [4, 4] }
      it 'returns 8 moves' do
        expect(knight.possible_coordinates).to contain_exactly([2, 3], [2, 5], [6, 5], [3, 6], [5, 6],
                                                               [6, 3], [5, 2], [3, 2])
      end
    end
    context 'at start position' do
      let(:position) { [2, 1] }
      it 'returns 3 moves' do
        expect(knight.possible_coordinates).to contain_exactly([1, 3], [3, 3], [4, 2])
      end
    end
  end
end
