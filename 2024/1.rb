# frozen_string_literal: true
require "debug"

# prepare data
data =
  open("./1-input.txt")
  .read
  .scan(/\d+/)
  .map(&:to_i)
  .partition.with_index { |_, i| i.even? }
  .map(&:sort)

# part 1
result =
  data
  .first
  .zip(data.last)
  .map { |group| (group.first - group.last).abs }
  .sum

p result

# part 2
left, right = data

result_two = left.each_with_object([]) do |num, arr|
  arr << num * right.count(num)
end.sum

p result_two
