# frozen_string_literal: true

require "debug"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)
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

def all_edges(points)
  edges = []

  points.each_with_index do |p1, i|
    points[(i + 1)...points.length].each do |p2|
      dist = p1.distance(p2)
      edges << Edge.new(p1, p2, dist)
    end
  end

  edges.sort_by!(&:dist)
end

# part 1

edges = all_edges(points)

boxes = [Set.new([edges.first.p1, edges.first.p2])]
length = data.size > 20 ? 1_000 : 10
edges[1...length].each do |edge|
  p1, p2 = edge.p1, edge.p2
  matching_boxes = boxes.select { |box| box.include?(p1) || box.include?(p2) }

  case matching_boxes.size
  when 0
    boxes << Set.new([p1, p2])
  when 1
    box = matching_boxes.first
    box << p1
    box << p2
  else
    box = matching_boxes.first

    matching_boxes[1..].each do |b|
      box.merge(b)
      boxes.delete(b)
    end

    box << p1
    box << p2
  end
end

puts boxes.map(&:size).max(3).reduce(&:*)

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
