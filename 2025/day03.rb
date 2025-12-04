# frozen_string_literal: true

require_relative "../utils.rb"

# some custom logic I made to either read
# from the sample input or download the input
# from the website
raw = AOC::Input.resolve(ARGV, DATA)
data = AOC::Parser.line_numbers(raw)

class BatteryBank
  attr_reader :banks, :digits

  def initialize(banks, digits = 2)
    @banks = banks
    @digits = digits
  end

  def joltage
    number_to_remove = banks.length - digits

    banks.each_with_object([]) do |digit, stack|
      while number_to_remove.positive? && stack.any? && stack.last < digit
        stack.pop
        number_to_remove -= 1
      end

      stack << digit
    end.first(digits).join.to_i
  end
end

# part 1
part_one = data.map { |banks| BatteryBank.new(banks).joltage }
puts part_one.sum

# part 2
part_two = data.map { |banks| BatteryBank.new(banks, 12).joltage }
puts part_two.sum

__END__
987654321111111
811111111111119
234234234234278
818181911112111
