# parse input
# only difference from part 1 is to reverse input
data = open("./input.txt").read.split("\n").map(&:split).map { |line| line.map(&:to_i) }.map(&:reverse)

def reduce_line(line)
  arr = []

  (line.count-1).times do |i|
    arr << line[i+1].to_i - line[i]
  end

  arr
end

result = data.each_with_object([]) do |line, result|
  temp = []
  until line.all?(&:zero?)
    line = reduce_line(line)
    temp << line.last
  end
  result << temp
end

result.map!(&:sum)

answer = data.each_with_object([]).with_index do |(line,arr), index|
  arr << line.last + result[index]
end

p answer.sum
