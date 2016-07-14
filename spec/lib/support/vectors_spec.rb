require 'support/vectors.rb'

describe Support::Vectors do
  describe 'constants' do
    let(:vectors_module) { Support::Vectors }

    it 'returns correct north and south vectors' do
      expect(vectors_module::NORTH_SOUTH).to eql [[0, 1], [0, -1]]
    end

    it 'returns correct west and east vectors' do
      expect(vectors_module::WEST_EAST).to eql [[-1, 0], [1, 0]]
    end

    it 'returns correct north-east and south-west vectors' do
      expect(vectors_module::N_EAST_S_WEST).to eql [[-1, -1], [1, 1]]
    end

    it 'returns correct north-west and south-east vectors' do
      expect(vectors_module::N_WEST_S_EAST).to eql [[-1, 1], [1, -1]]
    end
  end
end
