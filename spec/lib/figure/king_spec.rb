require 'figure/king'

describe Figure::King do
  describe '#possible_coordinates' do
    context 'from initial position' do
      let(:king) { Figure::King.new(4, 1, color: 'black') }
      it 'returns 5 possible positions for next move' do
        expect(king.possible_coordinates).to eql([[5, 2], [5, 1], [3, 1], [3, 2], [4, 2]])
      end
    end

    context 'at least 1 place from border' do
      pending 'returns 8 possible positions for next move'
    end
  end
end
