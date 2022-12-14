require 'pry'
require 'pry-byebug'

input = open('input.txt')
          .read
          .split("\n\n")
          .map { |pair| pair.split("\n") }
          .map { |data| data.map { |data| eval(data) }}

def deep_compare(left, right)
  return nil if left.empty? && right.empty?
  return true if left.empty?
  return false if right.empty?

  left_head, *left_tail = left
  right_head, *right_tail = right

  case [left_head, right_head]
  in [Integer, Integer]
    return true if left_head < right_head
    return false if left_head > right_head
  in [Array, Array]
    result = deep_compare(left_head, right_head)
  in [Array, Integer]
    result = deep_compare(left_head, [right_head])
  in [Integer, Array]
    result = deep_compare([left_head], right_head)
  end

  result.nil? ? deep_compare(left_tail, right_tail) : result
end

total = 0

input.each_with_index  do |row, index|
  if deep_compare(row[0], row[1])
    total += (index + 1)
  end
end

puts total

input2 = open('input.txt')
           .read
           .split("\n")
           .reject(&:empty?)
           .map { |row| eval(row) }
           .push([[2]])
           .push([[6]])
           .sort { |left, right| deep_compare(left, right) ? -1 : 1 }

divider_packet_1 = input2.find_index([[2]]) + 1
divider_packet_2 = input2.find_index([[6]]) + 1

puts divider_packet_1 * divider_packet_2