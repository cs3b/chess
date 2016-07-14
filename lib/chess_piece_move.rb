require 'support/transform_position'
require 'support/fetch_figure_class'

ChessPieceMove = Struct.new(:position, :figure_move_class) do
  include Support::TransformPosition
  include Support::FetchFigureClass

  def possible_positions
    possible_coordinates(to_coordinate(position)).map do |coordinate|
      to_position(*coordinate)
    end
  end

  private

  def possible_coordinates(coordinate)
    figure_move_class.new(coordinate, ARGV[2]).possible_moves
  end
end
