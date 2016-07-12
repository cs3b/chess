require 'support/transform_position'

ChessPieceMove = Struct.new(:position, :figure_move_class) do
  include Support::TransformPosition

  CHARACTERS_MAP = ' abcdefgh'.freeze

  def possible_positions
    possible_coordinates(to_coordinate(position)).map do |coordinate|
      to_position(*coordinate)
    end
  end

  private

  def to_coordinate(position)
    [to_number(position[0]), position[1].to_i]
  end

  def to_position(x, y)
    to_char(x) + y.to_s
  end

  def to_number(char)
    CHARACTERS_MAP.index(char)
  end

  def to_char(number)
    CHARACTERS_MAP[number]
  end

  def possible_coordinates(coordinate)
    figure_move_class.new(coordinate.first, coordinate.last).possible_coordinates
  end
end
