require 'figure/queen'

describe Figure::Queen do
  describe '#possible_coordinates' do
    context 'in corner of board' do
      let(:queen) { Figure::Queen.new(1, 1, color: 'white') }
      it { expect(queen.possible_coordinates.count).to eql(21) }
    end
    pending 'in the middle of the board'
  end
end
