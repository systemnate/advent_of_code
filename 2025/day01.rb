# frozen_string_literal: true

require_relative "../utils.rb"
require "debug"

raw = AOC::Input.resolve(ARGV, DATA)
instructions = AOC::Parser.lines(raw)

class PartOneRotator
  def rotate_left(safe, amount)
    safe.current = safe.range[(safe.current - amount) % safe.range.size]
    safe.zero_counter += 1 if safe.current.zero?
  end

  def rotate_right(safe, amount)
    safe.current = safe.range[(safe.current + amount) % safe.range.size]
    safe.zero_counter += 1 if safe.current.zero?
  end
end

class PartTwoRotator
  def rotate_left(safe, amount)
    amount.times do
      safe.current = safe.range[(safe.current - 1) % safe.range.size]
      safe.zero_counter += 1 if safe.current.zero?
    end
  end

  def rotate_right(safe, amount)
    amount.times do
      safe.current = safe.range[(safe.current + 1) % safe.range.size]
      safe.zero_counter += 1 if safe.current.zero?
    end
  end
end

class Safe
  attr_accessor :current, :zero_counter
  attr_reader :range, :rotator

  def initialize(starting_point = 50, rotator: PartOneRotator.new)
    @current = starting_point
    @range = (0..99).to_a
    @zero_counter = 0
    @rotator = rotator
  end

  def rotate_left(amount)
    rotator.rotate_left(self, amount)
  end

  def rotate_right(amount)
    rotator.rotate_right(self, amount)
  end
end

safe = Safe.new(50)

instructions.each do |instruction|
  dir = instruction[0]
  amount = instruction[1..].to_i

  if dir == "L"
    safe.rotate_left(amount)
  else
    safe.rotate_right(amount)
  end
end

puts safe.zero_counter

safe = Safe.new(50, rotator: PartTwoRotator.new)

instructions.each do |instruction|
  dir = instruction[0]
  amount = instruction[1..].to_i

  if dir == "L"
    safe.rotate_left(amount)
  else
    safe.rotate_right(amount)
  end
end

puts safe.zero_counter
__END__
L68
L30
R48
L5
R60
L55
L1
L99
R14
L82
