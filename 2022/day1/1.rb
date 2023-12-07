# Part 1
puts open('./input1.txt')
  .read
  .split("\n\n")
  .map { |data| data.split("\n") }
  .map { |data| data.map(&:to_i) }
  .map(&:sum)
  .max

# Part 2
puts open('./input1.txt')
  .read
  .split("\n\n")
  .map { |data| data.split("\n") }
  .map { |data| data.map(&:to_i) }
  .map(&:sum)
  .max(3)
  .sum
