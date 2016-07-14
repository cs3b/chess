require 'figure/bishop'

describe Figure::Bishop do
  describe '#possible_coordinates' do
    context 'at least 1 place from border' do
      let(:bishop) { described_class.new(2, 2) }
      it 'returns 9 position' do
        expect(bishop.possible_coordinates.count).to eql(9)
      end
    end
  end

  context 'in the middle of the board' do
  end
end
