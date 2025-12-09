# frozen_string_literal: true

require "debug"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)
data = AOC::Parser.lines(raw)
data = data.map { _1.split(",") }.map { _1.map(&:to_i) }

Point = Struct.new(:x, :y) do
  def area(point)
    width  = (point.x - x).abs + 1
    height = (point.y - y).abs + 1
    width * height
  end
end

data = data.map { Point.new(*_1) }
rectangles = []
data.each do |p1|
  data[1..].each do |p2|
    rectangles << p1.area(p2)
  end
end

puts rectangles.max
__END__
7,1
11,1
11,7
9,7
9,5
2,5
2,3
7,3
