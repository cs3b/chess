require 'support/transform_position'

ChessPieceMove = Struct.new(:position, :figure_move_class) do
  include Support::TransformPosition

  def possible_positions
    possible_coordinates(coordinate).map do |coordinate|
      to_position(*coordinate)
    end
  end

  private

  def coordinate
    to_coordinate(position)
  end

  def possible_coordinates(coordinate)
    figure_move_class.new(coordinate.first, coordinate.last).possible_coordinates
  end
end
