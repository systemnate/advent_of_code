require "debug"

range = (178416..676461)

def valid?(number)
  nums = number.digits.reverse
  same = false

  nums.each_cons(2) do |a, b|
    if a == b
      same = true
    else
      return false if a > b
    end
  end

  same
end

valid = range.each_with_object([]) do |number, array|
  array << number if valid?(number)
end

puts valid.count

# part 2

def valid_part_two?(number)
  nums = number.digits.reverse
  same = Hash.new(0)

  nums.each_cons(2) do |a, b|
    if a == b
      same[a] += 1
    else
      return false if a > b
    end
  end

  same.any? { |k, v| v == 1 }
end

valid = range.each_with_object([]) do |number, array|
  array << number if valid_part_two?(number)
end

puts valid.count
