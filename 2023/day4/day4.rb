data = open("./input.txt").read.split("\n")

data.map! do |line|
  winning_nums, your_nums = line.split("|")
  winning_nums = winning_nums.match(/Card.+:\s(.+)/).captures.first
  winning_nums = winning_nums.split(" ").map(&:to_i).sort
  your_nums = your_nums.split(" ").map(&:to_i).sort

  winners = winning_nums.select { |num| your_nums.include?(num) }

  if winners.count > 0
    2**(winners.count - 1)
  else
    0
  end
rescue => e
  pp line
end

pp data.sum
