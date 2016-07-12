module Support
  class FetchAClass
    attr_reader :class_name

    WHITELIST = %w(knight bishop pawn queen king rook).freeze

    def initialize(class_name = nil)
      @class_name = class_name
    end

    def class_valid?
      WHITELIST.include?(class_name.downcase)
    end


  end
end
