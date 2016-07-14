require 'figure/pawn'

describe Figure::Pawn do
  describe '#possible_coordinates' do
    context 'black pawn' do
      context 'for starting place' do
        let(:moves) { [[1, 6], [1, 5]] }
        it 'returns two possible moves' do
          expect(described_class.new([1, 7], 'black').moves).to eql moves
        end
      end

      context 'for any other place' do
        let(:moves) { [[2, 4]] }

        it 'returns one possible move' do
          expect(described_class.new([2, 5], 'black').moves).to eql moves
        end
      end
    end

    context 'white pawn' do
      context 'for starting place' do
        let(:moves) { [[1, 3], [1, 4]] }

        it 'returns two possible moves' do
          expect(described_class.new([1, 2]).moves).to eql moves
        end
      end

      context 'for any other place' do
        let(:moves) { [[2, 5]] }

        it 'returns one possible move' do
          expect(described_class.new([2, 4]).moves).to eql moves
        end
      end
    end
  end
end
