require 'figure/queen'

describe Figure::Queen do
  let(:queen) { Figure::Queen.new(*position) }

  describe '#possible_coordinates' do
    context 'in corner of board' do
      let(:position) { [1, 1] }
      it 'returns 21 moves' do
        expect(queen.possible_coordinates).to contain_exactly([2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7], [8, 8],
                                                              [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8],
                                                              [2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1], [8, 1])
      end
    end

    context 'in the middle of the board' do
      let(:position) { [4, 4] }
      it 'returns 27 moves' do
        expect(queen.possible_coordinates).to contain_exactly([1, 7], [1, 4], [1, 1], [2, 4], [2, 2], [3, 4],
                                                              [3, 3], [4, 8], [4, 7], [4, 6], [4, 5], [4, 3], [2, 7],
                                                              [4, 2], [4, 1], [5, 5], [5, 4], [5, 3], [6, 6], [6, 4],
                                                              [6, 2], [7, 7], [7, 4], [7, 1], [8, 8], [8, 4], [3, 5])
      end
    end
  end
end
