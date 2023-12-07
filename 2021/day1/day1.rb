input = open("./input.txt").read.split("\n").map(&:to_i)

def increases(input)
  count = 0

  input.each_with_index do |num, idx|
    if input[idx + 1].to_i > num
      count += 1
    end
  end

  count
end

p increases(input)

sum_in_groups_of_three = input.each_with_object([]).with_index do |(_, arr), index|
  arr << input[index, 3]
end.map(&:sum)

p increases(sum_in_groups_of_three)