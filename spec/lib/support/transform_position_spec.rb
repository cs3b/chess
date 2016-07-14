require 'support/transform_position'

describe Support::TransformPosition do
  before do
    class ChessPieceDouble
      include Support::TransformPosition
    end
  end
  let(:transform_position) { ChessPieceDouble.new }

  describe '#to_coordinate' do
    it { expect(transform_position.to_coordinate('d4')).to eql([4, 4]) }
  end
  describe '#to_position' do
    it { expect(transform_position.to_position(3, 2)).to eql('c2') }
  end
end
