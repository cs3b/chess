module Support
  class FetchAClass
    attr_reader :class_name

    WHITELIST = %w(Knight Bishop Pawn Queen King Rook).freeze

    def initialize(class_name = nil)
      @class_name = class_name
    end

    def class_valid?
      WHITELIST.include?(class_name)
    end

    def fetch_const
      Object.const_get("Figure::#{class_name}")
    end
  end
end
