require 'rspec'

describe 'Manhattan distance' do
  it '(1,1) to (1,1) == 0' do
    expect(Asdfasfd.manhattan_distance(Point.new(1, 1), Point.new(1, 1))).to be(0)
  end

  it '(1,1) to (1,2) == 1' do
    expect(Asdfasfd.manhattan_distance(Point.new(1, 1), Point.new(1, 2))).to be(1)
  end
end

class Asdfasfd
  def self.manhattan_distance(point1, point2)
    point1.distance_to(point2)
  end
end

class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance_to(another)
    (@x.abs - another.x.abs + @y.abs - another.y.abs).abs
  end
end
