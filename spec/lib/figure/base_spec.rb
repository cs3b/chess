require 'figure/base'

describe Figure::Base do
let(:base) { described_class.new(1, 1) }
  describe 'template methods' do
    describe '#vectors' do
      context 'when method implementation is missing' do
        it 'raises' do
          expect { base.vectors }.to raise_error(NotImplementedError)
        end
      end
    end
  end

  pending 'coordinate should not know about board size'
end
