require 'figure/rook'

describe Figure::Rook do
  describe '#possible_coordinates' do
    context 'from initial place' do
      let(:rook) { Figure::Rook.new(1, 1, color: 'black') }
      it { expect(rook.possible_coordinates.count).to eql(14) }
    end
    context 'from middle of board' do
      let(:rook) { Figure::Rook.new(4, 4, color: 'white') }
      it { expect(rook.possible_coordinates.count).to eql(14) }
    end
  end
end
