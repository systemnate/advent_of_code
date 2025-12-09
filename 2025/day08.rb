# frozen_string_literal: true

require "debug"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)

# data = [ [1,2,3], [4,5,6], ... ]
data = AOC::Parser.lines(raw).map { _1.split(",") }.map { _1.map(&:to_i) }

Point = Struct.new(:x, :y, :z) do
  def distance(other)
    Math.sqrt(
      (other.x - x)**2 + (other.y - y)**2 + (other.z - z)**2
    )
  end
end

Edge = Struct.new(:p1, :p2, :dist)

points = data.map { Point.new(*_1) }

edges = []

# compute distance between all points
points.each_with_index do |p1, i|
  points[(i + 1)...points.length].each do |p2|
    dist = p1.distance(p2)
    edges << Edge.new(p1, p2, dist)
  end
end

edges.sort_by!(&:dist)

# part 1
length = data.size > 20 ? 1_000 : 10
boxes = points.map { |p| Set.new([p]) }

edges.first(length).each do |edge|
  p1, p2 = edge.p1, edge.p2

  box1 = boxes.find { |b| b.include?(p1) }
  box2 = boxes.find { |b| b.include?(p2) }

  next if box1.equal?(box2)

  box1.merge(box2)
  boxes.delete(box2)
end

puts boxes.map(&:size).max(3).reduce(&:*)

# part 2
boxes = points.map { |p| Set.new([p]) }

last_edge = nil

edges.each do |edge|
  p1, p2 = edge.p1, edge.p2

  box1 = boxes.find { |b| b.include?(p1) }
  box2 = boxes.find { |b| b.include?(p2) }

  next if box1.equal?(box2)

  box1.merge(box2)
  boxes.delete(box2)

  last_edge = edge

  break if boxes.size == 1
end

puts last_edge.p1.x * last_edge.p2.x

__END__
162,817,812
57,618,57
906,360,560
592,479,940
352,342,300
466,668,158
542,29,236
431,825,988
739,650,466
52,470,668
216,146,977
819,987,18
117,168,530
805,96,715
346,949,466
970,615,88
941,993,340
862,61,35
984,92,344
425,690,689
