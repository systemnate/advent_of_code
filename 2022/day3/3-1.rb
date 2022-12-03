rucksacks = open('./input3.txt').read.split("\n")

# shared
lower_chars = *('a'..'z')
upper_chars = *('A'..'Z')
numbers = *(1..52)
mapping = (lower_chars + upper_chars).zip(numbers).to_h

# part 1
sum = 0
rucksacks.each do |rucksack|
  left, right = rucksack.chars.each_slice(rucksack.size/2).to_a
  intersection = left.intersection(right)
  total = intersection.map { |letter| mapping[letter] }.sum
  sum += total
end

puts sum

# part 2
sum = 0
rucksacks.each_slice(3).to_a.each do |group|
  group = group.map(&:chars)
  intersection = group[0].intersection(group[1], group[2])
  total = intersection.map { |letter| mapping[letter] }.sum
  sum += total
end

puts sum
