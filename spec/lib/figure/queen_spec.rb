require 'figure/queen'

describe Figure::Queen do
  describe '#moves' do
    let(:queen_moves) do
      [[5, 4], [3, 4], [4, 5], [4, 3], [5, 5], [5, 3], [3, 5], [3, 3], [6, 4], [2, 4], [4, 6], [4, 2],
       [6, 6], [6, 2], [2, 6], [2, 2], [7, 4], [1, 4], [4, 7], [4, 1], [7, 7], [7, 1], [1, 7], [1, 1],
       [8, 4], [0, 4], [4, 8], [4, 0], [8, 8], [8, 0], [0, 8], [0, 0], [9, 4], [-1, 4], [4, 9],
       [4, -1], [9, 9], [9, -1], [-1, 9], [-1, -1], [10, 4], [-2, 4], [4, 10], [4, -2], [10, 10],
       [10, -2], [-2, 10], [-2, -2], [11, 4], [-3, 4], [4, 11], [4, -3], [11, 11], [11, -3], [-3, 11], [-3, -3]]
    end

    it 'returns array of not filtered potential coordinates' do
      expect(described_class.new([4, 4]).moves).to match_array queen_moves
    end
  end
end
