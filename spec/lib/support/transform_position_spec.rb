require 'support/transform_position'

describe Support::TransformPosition do
  before do
    class ChessPieceDouble
      include Support::TransformPosition
    end
  end
  let(:transform_position) { ChessPieceDouble.new }

  context 'given g2' do
    it 'returns [7, 2]' do
      expect(transform_position.to_coordinate('g2')).to eql([7, 2])
    end
  end
  context 'given [7, 2]' do
    it 'return g2' do
      expect(transform_position.to_position(7, 2)). to eql('g2')
    end
  end
end
