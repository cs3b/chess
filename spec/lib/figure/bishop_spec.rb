require 'figure/bishop'
require 'figure/base'

describe Figure::Bishop do
  let(:bishop) { Figure::Bishop.new(*position) }

  describe '#possible_coordinates' do
    context 'at least 1 place from border' do
      let(:position) { [2, 3] }
      it 'returns 9 moves' do
        expect(bishop.possible_coordinates).to contain_exactly([1, 2], [1, 4], [3, 2], [4, 1], [3, 4], [4, 5], [5, 6], [6, 7], [7, 8])
      end
    end

    context 'in the middle of the board' do
      let(:position) { [4, 4] }
      it 'returns 13 moves' do
        expect(bishop.possible_coordinates).to contain_exactly([1, 1], [2, 2], [3, 3], [5, 5], [6, 6], [7, 7], [8, 8], [3, 5],
                                                               [2, 7], [1, 7], [5, 3], [6, 2], [7, 1])
      end
    end
  end
end
