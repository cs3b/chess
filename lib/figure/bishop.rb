require 'figure/base'

module Figure
  class Bishop < Base
    def vectors
      (1..7).flat_map { |vector| [[vector, vector], [vector, -vector], [-vector, vector], [-vector, -vector]] }
    end

    def moves
      vectors.map { |vector_x, vector_y| [x + vector_x, y + vector_y] }
    end
  end
end
