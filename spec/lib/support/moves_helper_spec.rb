require 'support/moves_helper'
require 'figure/rook'

describe Support::MovesHelper do
  before do
    class BoardDouble
      include Support::MovesHelper
      attr_accessor :chess_board

      def initialize
        @chess_board = {}
        @chess_board[[4, 4]] = Figure::Rook.new([4, 4], 'white')
        @chess_board[[2, 4]] = Figure::Rook.new([2, 4], 'white')
        @chess_board[[4, 2]] = Figure::Rook.new([4, 2], 'black')
      end
    end
  end
  let(:board_double) { BoardDouble.new }

  describe '#possible_moves' do
    let(:possible_moves) { [[4, 5], [4, 3], [3, 4], [5, 4], [4, 6], [4, 2], [6, 4], [4, 7], [4, 1], [1, 4], [7, 4], [4, 8], [8, 4]] }

    it 'returns array of possible moves' do
      expect(board_double.possible_moves(4, 4)).to match_array possible_moves
    end
  end

  describe '#collision_check' do
    it 'returns collision with another figure' do
      expect(board_double.collision_check?([4, 4], [2, 4])).to be_falsey
    end
  end

  describe '#figure_coords_after_move' do
    it 'moves and returns new position' do
      expect(board_double.figure_coords_after_move([4, 4], [4, 2])).to have_attributes(x: 4, y: 2, color: 'white')
    end
  end
end
