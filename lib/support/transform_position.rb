module Support
  module TransformPosition
    CHARS_MAP = ' abcdefgh'.freeze

    def to_coordinate(position)
      [to_number(position[0]), position[1].to_i]
    end

    def to_position(x, y)
      to_letter(x) + y.to_s
    end

    private

    def to_letter(number)
      CHARS_MAP[number]
    end

    def to_number(letter)
      CHARS_MAP.index(letter)
    end
  end
end
