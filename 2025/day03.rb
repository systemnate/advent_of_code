# frozen_string_literal: true

require "debug"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)
data = AOC::Parser.line_chars(raw)
data = data.map { _1.map(&:to_i) }

class BatteryBank
  attr_reader :banks

  def initialize(banks)
    @banks = banks
  end

  def joltage
    banks.combination(2).max.map(&:to_s).join.to_i
  end
end

# part 1
part_one = data.map { |banks| BatteryBank.new(banks).joltage }
puts part_one.sum

__END__
987654321111111
811111111111119
234234234234278
818181911112111
