#### Single responsibility Principle

```ruby
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
```

#### Single responsibility Principle

```ruby
  class Base
    attr_reader :x, :y, :color

    def initialize(x, y, color = 'white', properties = {})
      @x = x
      @y = y
      @color = color
      @board = Support::Board.new
      post_initialize(properties)
    end

    def possible_coordinates
      all_coordinates.select { |move| @board.on_board?(move.first, move.last) }
    end

    protected

    def all_coordinates
      vectors.map { |vector_x, vector_y| [x + vector_x, y + vector_y] }
    end

    def post_initialize(properties)
    end

    def vectors
      raise NotImplementedError
    end
  end

  class King < Base
    VECTORS = [[1, 1], [1, 0], [1, -1], [0, -1], [-1, -1], [-1, 0], [-1, 1], [0, 1]].freeze

    def vectors
      VECTORS
    end
  end
```

#### Liskov Substitution

```ruby
def test(klass)
  Exercise.new(Object.const_get(klass)).call
end

def it_works
  test('Figure::Pawn')
  test('Figure::King')
  test('Figure::Queen')
  test('Figure::Rook')
  test('Figure::Bishop')
  test('Figure::Knight')
  puts 'It works!'
end

it_works
```

Console output

```
e7 e6 e5 d5 c5 c6 c7 d7
f6 f5 f4 e4 d4 d5 d6 e6
c2 c1 a1 a2 b2
e5 e4 e3 d3 c3 c4 c5 d5
h3 h1 f3 e5 d5 c6 b7 a8 f1 c6 g3 g4 g5 g6 g7 g8 h2 f2 e2 d2 c2 b2 a2 g1
b2 c3 d4 e5 f6 g7 h8 a2 a3 a4 a5 a6 a7 a8 b1 c1 d1 e1 f1 g1 h1
e7 f8 e5 f4 g3 h2 c7 c5 b4 a3 d7 d8 e6 f6 g6 h6 c6 b6 a6 d5 d4 d3 d2 d1
f6 g7 h8 f4 g3 h2 d6 c8 b8 d4 c3 b2 e6 e7 e8 f5 g5 h5 d5 c5 b5 a5 e4 e3 e2 e1
c2 d3 e4 f5 g6 h7 a2 b2 b3 b4 b5 b6 b7 b8 c1 d1 e1 f1 g1 h1 a1
e5 f6 g7 h8 e3 f2 g1 c5 b7 a7 c3 b2 a1 d5 d6 d7 d8 e4 f4 g4 h4 c4 b4 a4 d3 d2 d1
g3 g4 g5 g6 g7 g8 h2 f2 e2 d2 c2 b2 a2 g1
a2 a3 a4 a5 a6 a7 a8 b1 c1 d1 e1 f1 g1 h1
d7 d8 e6 f6 g6 h6 c6 b6 a6 d5 d4 d3 d2 d1
e6 e7 e8 f5 g5 h5 d5 c5 b5 a5 e4 e3 e2 e1
b2 b3 b4 b5 b6 b7 b8 c1 d1 e1 f1 g1 h1 a1
d5 d6 d7 d8 e4 f4 g4 h4 c4 b4 a4 d3 d2 d1
h3 h1 f3 e5 d5 c6 b7 a8 f1 c6
b2 c3 d4 e5 f6 g7 h8
e7 f8 e5 f4 g3 h2 c7 c5 b4 a3
f6 g7 h8 f4 g3 h2 d6 c8 b8 d4 c3 b2
c2 d3 e4 f5 g6 h7 a2
e5 f6 g7 h8 e3 f2 g1 c5 b7 a7 c3 b2 a1
h4 e1 e3 f4
b3 c2
e8 f7 f5 e4 c4 b5 b7 c8
f7 g6 g4 f3 d3 c4 c6 d7
c3 d2 a3
e6 f5 f3 e2 c2 b3 b5 c6
It works!
```

#### Interface Segregation

LINK DO DIFFA DAĆ

```ruby
class FetchAClass
```

```ruby
class Board
```

```ruby
module TransformPosition
```

#### DRY

```ruby
  class Bishop < Base
```

#### Law of Demeter
Adding manny client-specific interfaces makes possible knowing classes less about each other.
