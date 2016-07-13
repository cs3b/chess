require 'support/transform_position'

ChessPieceMove = Struct.new(:position, :figure_move_class) do
  include Support::TransformPosition
  ASCII_TRANSLATION = 96

  def possible_positions
    possible_coordinates(to_coordinate(position)).map do |coordinate|
      to_position(*coordinate)
    end
  end

  private

  def possible_coordinates(coordinate)
    figure_move_class.new(coordinate.first, coordinate.last).possible_coordinates
  end

  def to_coordinate(position)
    [position[0].ord - ASCII_TRANSLATION, position[1].to_i]
  end

  def to_position(x, y)
    (x + ASCII_TRANSLATION).chr + y.to_s
  end
end
