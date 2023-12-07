# part 1

numbers = []
data = open("./input2.txt").read.split("\n").map do |d|
  nums = d.scan(/[0-9]/)
  num1 = nums[0]
  num2 = nums[-1]
  number = num1 + num2

  numbers << number.to_i
end

p numbers.sum

# part 2
numbers = []

data = open("./input2.txt").read.split("\n").map do |d|
  d.gsub!("one", "o1e")
  d.gsub!("two", "t2o")
  d.gsub!("three", "t3e")
  d.gsub!("four", "f4r")
  d.gsub!("five", "f5e")
  d.gsub!("six", "s6x")
  d.gsub!("seven", "s7n")
  d.gsub!("eight", "e8t")
  d.gsub!("nine", "n9e")
  nums = d.scan(/[0-9]/)
  num1 = nums[0]
  num2 = nums[-1]

  number = num1 + num2

  numbers << number.to_i
end

p numbers.sum

