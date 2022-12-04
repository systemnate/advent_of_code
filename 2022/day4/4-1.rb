class String
  def to_range
    start, stop = self.split("-").map(&:to_i)
    (start..stop)
  end
end

overlaps = 0

input = open('./input4.txt')
  .read.split("\n")
  .map { |data| data.split(",") }
  .map { |data| data.map(&:to_range) }

# part 1
input.each do |assignment|
  r1, r2 = assignment
  if r1.cover?(r2) || r2.cover?(r1)
    overlaps += 1
  end
end

p overlaps

# part 2
overlaps = 0

input.each do |assignment|
  r1, r2 = assignment.map(&:to_a)
  if r1.intersection(r2).any?
    overlaps += 1
  end
end

p overlaps
