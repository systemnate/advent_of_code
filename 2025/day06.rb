# frozen_string_literal: true

require "debug"
require "ostruct"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)
data = AOC::Parser.raw_data(raw).split("\n").map { _1.split(" ") }.transpose

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

part_one = data.map { PartOne.new(_1) }

puts part_one.map { _1.solution }.sum
__END__
123 328  51 64 
 45 64  387 23 
  6 98  215 314
*   +   *   +  
