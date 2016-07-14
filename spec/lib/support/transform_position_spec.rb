require 'support/transform_position'

describe Support::TransformPosition do
  before do
    class ChessPieceDouble
      include Support::TransformPosition
    end
  end
  let(:transform_position) { ChessPieceDouble.new }

  describe '#to_coordinate' do
    it 'returns array of coordinates' do
      expect(transform_position.to_coordinate('d4')).to eql [4, 4]
    end
  end

  describe '#to_position' do
    it 'returns position string from coords' do
      expect(transform_position.to_position(4, 4)).to eql 'd4'
    end
  end
end
