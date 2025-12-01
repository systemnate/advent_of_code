# frozen_string_literal: true

require_relative "../utils.rb"
require "debug"

raw = AOC::Input.resolve(ARGV, DATA)
instructions = AOC::Parser.lines(raw)

class Safe
  attr_reader :current, :range, :zero_counter

  def initialize(starting_point = 50)
    @current = starting_point
    @range = (0..99).to_a
    @zero_counter = 0
  end

  def rotate_left(amount)
    @current = @range[(@current - amount) % @range.size]

    if @current.zero?
      @zero_counter += 1
    end
  end

  def rotate_right(amount)
    @current = @range[(@current + amount) % @range.size]

    if @current.zero?
      @zero_counter += 1
    end
  end
end

class PartTwoSafe
  attr_reader :current, :range, :zero_counter

  def initialize(starting_point = 50)
    @current = starting_point
    @range = (0..99).to_a
    @zero_counter = 0
  end

  def rotate_left(amount)
    amount.times do
      @current = @range[(@current - 1) % @range.size]

      if @current.zero?
        @zero_counter += 1
      end
    end
  end

  def rotate_right(amount)
    amount.times do
      @current = @range[(@current + 1) % @range.size]

      if @current.zero?
        @zero_counter += 1
      end
    end
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

safe = PartTwoSafe.new(50)

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
