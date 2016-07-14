require 'figure/pawn'

describe Figure::Pawn do
  describe '#possible_coordinates' do
    context 'for starting place' do
      let(:pawn) { Figure::Pawn.new(1, 2, moved: false, color: 'white') }
        it 'returns one position' do
          expect(pawn.possible_coordinates).to contain_exactly([1, 4], [1, 3])
        end
    end
    pending 'for any other place'
  end
end
