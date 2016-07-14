require 'figure/pawn'
require 'figure/base'
require 'support/board'

describe Figure::Pawn do
  let(:pawn) { Figure::Pawn.new(*position, color) }

  describe '#possible_coordinates' do
    context 'with 2 values, on starting position(white y = 2)' do
      let(:position) { [1, 2] }
      let(:color) { 'white' }

      it 'returns 2 positions' do
        expect(pawn.possible_coordinates).to contain_exactly([1, 3], [1, 4])
      end
    end

    context 'with 2 values, on starting position(black y = 7)' do
      let(:position) { [1, 7] }
      let(:color) { 'black' }

      it 'returns 2 positions' do
        expect(pawn.possible_coordinates).to contain_exactly([1, 6], [1, 5])
      end
    end

    context ' returns 1 value if it is away of starting position(white y != 2, black y != 7)' do
      let(:position) { [1, 3] }
      let(:color) { 'white' }
      it 'return 1 position' do
        expect(pawn.possible_coordinates).to contain_exactly([1, 4])
      end
    end
    context ' returns 1 value if it is away of starting position(black y != 7)' do
      let(:position) { [1, 6] }
      let(:color) { 'black' }
      it 'return 1 position' do
        expect(pawn.possible_coordinates).to contain_exactly([1, 5])
      end
    end
  end
end
