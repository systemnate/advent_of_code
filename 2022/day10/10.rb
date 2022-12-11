# advent of code day 10
#
require 'pry'
require 'pry-byebug'

input = open('sample.txt').read.split("\n")
instructions = []
x = 1

input.each do |command|
  if command == "noop"
    instructions << 0
  elsif command =~ /^addx (-?\d+)/
    instructions << 0
    instructions << $1.to_i
  end
end

computed = [0]
instructions.each_with_index do |instruction, i|
  x += instruction
  computed << x
end

values = computed[19..].each_slice(40).to_a.map(&:first)
indexes = (1..220).to_a[19..].each_slice(40).to_a.map(&:first)

p values.zip(indexes).map { |s, i| s * i }.sum