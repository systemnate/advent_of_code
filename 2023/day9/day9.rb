# parse input
data = open("./input.txt").read.split("\n").map(&:split).map { |line| line.map(&:to_i) }

# takes a line like [0 3 6 9 12 15] and converts to diff between "gaps"
# so in this example, each gap has a space of 3 between each element so
# this will reduce the line to [3 3 3 3 3]
def reduce_line(line)
  arr = []

  (line.count-1).times do |i|
    arr << line[i+1].to_i - line[i]
  end

  arr
end

# process each line in the input until all items are 0
# store the "new value" in the result
result = data.each_with_object([]) do |line, result|
  temp = []
  until line.all?(&:zero?)
    line = reduce_line(line)
    temp << line.last
  end
  result << temp
end


# sum each result since this is what we need to add to the initial data
result.map!(&:sum)

# create a new array that contains the last element in the initial data
# plus the sum from reducing each line
answer = data.each_with_object([]).with_index do |(line,arr), index|
  arr << line.last + result[index]
end

p answer.sum
