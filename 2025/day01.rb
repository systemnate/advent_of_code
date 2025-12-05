# frozen_string_literal: true

require_relative "../utils.rb"
require "debug"

raw = AOC::Input.resolve(ARGV, DATA)
instructions = AOC::Parser.lines(raw)

class Rotator
  attr_reader :safe

  def initialize(safe)
    @safe = safe
  end

  def rotate_left(amount)
    raise "Not implemented"
  end

  def rotate_right(amount)
    raise "Not implemented"
  end
end

class PartOneRotator < Rotator
  def rotate_left(amount)
    safe.current = (safe.current - amount) % Safe::TICKS
    safe.zero_counter += 1 if safe.current.zero?
  end

  def rotate_right(amount)
    safe.current = (safe.current + amount) % Safe::TICKS
    safe.zero_counter += 1 if safe.current.zero?
  end
end

class PartTwoRotator < Rotator
  def rotate_left(amount)
    amount.times do
      safe.current = (safe.current - 1) % Safe::TICKS
      safe.zero_counter += 1 if safe.current.zero?
    end
  end

  def rotate_right(amount)
    amount.times do
      safe.current = (safe.current + 1) % Safe::TICKS
      safe.zero_counter += 1 if safe.current.zero?
    end
  end
end

class Safe
  attr_accessor :current, :zero_counter
  attr_reader :range, :rotator

  TICKS = 100

  def initialize(rotator: PartOneRotator)
    @current = 50
    @zero_counter = 0
    @rotator = rotator.new(self)
  end

  def rotate_left(amount)
    rotator.rotate_left(amount)
  end

  def rotate_right(amount)
    rotator.rotate_right(amount)
  end
end

safe_one = Safe.new
safe_two = Safe.new(rotator: PartTwoRotator)

instructions.each do |instruction|
  dir = instruction[0]
  amount = instruction[1..].to_i

  if dir == "L"
    safe_one.rotate_left(amount)
    safe_two.rotate_left(amount)
  else
    safe_one.rotate_right(amount)
    safe_two.rotate_right(amount)
  end
end

puts safe_one.zero_counter
puts safe_two.zero_counter
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
