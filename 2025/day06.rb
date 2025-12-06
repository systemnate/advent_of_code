# frozen_string_literal: true

require "debug"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)
data = AOC::Parser.raw_data(raw).split("\n")

part_one_data = data.map { _1.split(" ") }.transpose
part_two_data = data.map(&:chars).transpose.slice_before { _1.all?(" ") }

PartOne = Struct.new(:problems) do
  def numbers
    problems[0..-2].map(&:to_i)
  end

  def operand
    problems[-1].to_sym
  end

  def solution
    numbers.reduce(operand)
  end
end

PartTwo = Struct.new(:problems) do
  def numbers
    problems.map { |arr| arr[..-2] }.map(&:join).map(&:to_i).reject(&:zero?)
  end

  def operand
    problems.flatten.detect { |char| %w[* +].include?(char) }
  end

  def solution
    numbers.reduce(operand)
  end
end

part_one = part_one_data.map { PartOne.new(_1) }
part_two = part_two_data.map { PartTwo.new(_1) }

puts part_one.map { _1.solution }.sum
puts part_two.map { _1.solution }.sum
__END__
123 328  51 64 
 45 64  387 23 
  6 98  215 314
*   +   *   +  
