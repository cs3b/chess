require 'support/transform_position'

describe Support::TransformPosition do
  before do
    class ChessPieceDouble
      include Support::TransformPosition
    end
  end
  let(:transform_position) { ChessPieceDouble.new }

  context '#to_coordinate' do
    context 'from d4' do
      it 'return [4, 4]' do
        expect(transform_position.to_coordinate('d4')).to eql([4, 4])
      end
    end
  end
  context '#to_position' do
    context 'from coordinate [3,2]' do
      it 'return c2' do
        expect(transform_position.to_position(3, 2)).to eql('c2')
      end
    end
  end
end
