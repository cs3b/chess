require 'figure/pawn'

describe Figure::Pawn do
  let(:pawn) { Figure::Pawn.new(*position, color) }

  describe '#possible_coordinates' do
    context ' color white ' do
      let(:color) { 'white' }

      context 'starting position' do
        let(:position) { [1, 2] }
        it { expect(pawn.possible_coordinates).to contain_exactly([1, 3], [1, 4]) }
      end

      context 'non starting position' do
        let(:position) { [5, 4] }
        it { expect(pawn.possible_coordinates).to eql([[5, 5]]) }
      end
    end

    context 'color black' do
      let(:color) { 'black' }

      context 'starting position' do
        let(:position) { [1, 7] }
        it { expect(pawn.possible_coordinates).to contain_exactly([1, 6], [1, 5]) }
      end

      context 'non starting position' do
        let(:position) { [3, 3] }
        it { expect(pawn.possible_coordinates).to contain_exactly([3, 2]) }
      end
    end
  end
end
