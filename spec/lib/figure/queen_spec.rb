require 'figure/queen'

describe Figure::Queen do
  describe '#possible_coordinates' do
    context 'in corner of board' do
      let(:queen) { Figure::Queen.new(1, 1, color: 'white') }
      it { expect(queen.possible_coordinates.count).to eql(21) }
    end
    context 'in the middle of the board' do
      let(:queen) { Figure::Queen.new(4, 4) }
      it { expect(queen.possible_coordinates.count).to eql(27) }
    end
  end
end
