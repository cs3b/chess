require 'support/moves_helper'

describe Support::MovesHelper do
  before do
    class BoardDouble
      include Support::MovesHelper
      attr_accessor :chess_board

      def initialize
        @chess_board = {}
        @chess_board[[4, 4]] = { x: 4, y: 4, color: 'white' }
        @chess_board[[2, 4]] = { x: 2, y: 4, color: 'white' }
        @chess_board[[4, 2]] = { x: 4, y: 2, color: 'black' }
      end
    end
  end
  let(:moves_helper) { BoardDouble.new }

  describe '#possible_moves' do
    it 'returns array of possible moves' do
      expect(moves_helper.possible_moves(4, 4)).to eql [[4, 3]]
    end
  end
end
