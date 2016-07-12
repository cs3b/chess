module Support
  module TransformPosition
    CHARACTERS_MAP = ' abcdefgh'.freeze

    def to_coordinate(position)
      [to_number(position[0]), position[1].to_i]
    end

    def to_position(x, y)
      to_char(x) + y.to_s
    end

    private

    def to_number(char)
      CHARACTERS_MAP.index(char)
    end

    def to_char(number)
      CHARACTERS_MAP[number]
    end
  end
end
