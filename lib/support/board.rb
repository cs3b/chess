module Support
  module Board
    SCOPE = (1..8)
    def on_board?(x, y)
      SCOPE.cover?(x) && SCOPE.cover?(y)
    end
  end
end
