module Support
  module Board
    def on_board?(x, y)
      SCOPE.cover?(x) && SCOPE.cover?(y)
    end

    SCOPE = (1..8)
  end
end
