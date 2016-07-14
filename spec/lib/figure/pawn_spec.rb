require 'figure/pawn'

describe Figure::Pawn do
  let(:pawn) { Figure::Pawn.new(*position, color) }

  describe '#possible_coordinates' do
    context 'for starting place and color white' do
      let(:position) { [1, 2] }
      let(:color) { 'white' }

      it 'returns two position' do
        expect(pawn.possible_coordinates).to contain_exactly([1, 3], [1, 4])
      end
    end

    context 'for any other place and color white' do
      let(:position) { [5, 4] }
      let(:color) { 'white' }

      it 'return one position' do
        expect(pawn.possible_coordinates).to contain_exactly([5, 5])
      end
    end

    context 'for starting place and color black' do
       let(:position) { [1, 7] }
       let(:color) { 'black' }

       it 'return two position' do
         expect(pawn.possible_coordinates).to contain_exactly([1, 6], [1, 5])
       end
    end

    context 'for any other place and color black' do
      let(:position) { [3, 3] }
      let(:color) { 'black' }

      it 'return one position' do
        expect(pawn.possible_coordinates).to contain_exactly([3, 2])
      end
    end
  end
end
