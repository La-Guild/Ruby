require 'rspec'

describe 'Manhattan distance' do
  it 'asdfaf' do
    expect(Asdfasfd.manhattan_distance(Point.new(1, 1), Point.new(1, 1))).to be(0)
  end
end

class Asdfasfd
  def self.manhattan_distance(point1, point2)
    0
  end
end

class Point
  def initialize(x, y)
    @x = x
    @y = y
  end
end
