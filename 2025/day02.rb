# frozen_string_literal: true

require "debug"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)
data = AOC::Parser.raw_data(raw)
data = data.split(",")
           .map { |range| range.split("-") }
           .map { |first, last| (first.to_i..last.to_i) }

class Product
  attr_reader :product_id, :product_length, :middle_point

  def initialize(product_id)
    @product_id = product_id.to_s
    @product_length = @product_id.length
    @middle_point = @product_length / 2
  end

  def invalid?
    product_id[0...middle_point] == product_id[middle_point..]
  end

  def really_invalid?
    (1..middle_point).each do |pattern_length|
      pattern = product_id[0...pattern_length]

      return true if pattern * (product_length / pattern_length) == product_id
    end

    false
  end
end

# part 1
invalid_numbers = data.each_with_object([]) do |range, invalids|
  invalids << range.select { |n| Product.new(n).invalid? }
end.flatten

puts invalid_numbers.sum

# part 2
invalid_numbers = data.each_with_object([]) do |range, invalids|
  invalids << range.select { |n| Product.new(n).really_invalid? }
end.flatten

puts invalid_numbers.sum

__END__
11-22,95-115,998-1012,1188511880-1188511890,222220-222224,1698522-1698528,446443-446449,38593856-38593862,565653-565659,824824821-824824827,2121212118-2121212124
