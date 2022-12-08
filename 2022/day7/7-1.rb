require 'dig-deep'

input = open('input.txt').read.split("\n")
file_system = {}
stack = []

input.each do |command|
  next if command == "$ ls"

  if command == "$ cd .."
    stack.pop
  elsif command.start_with?("$ cd")
    stack << command.split.last
    part = file_system.dig(*stack) || file_system[stack.last] = {}
    part[:files] = []
  elsif command.start_with?("dir")
    dir = command.split.last
    part = file_system.dig(*stack)
    part[dir] = {}
  elsif command.match?(/^\d/)
    file_size = command.split.first.to_i
    part = file_system.dig(*stack)
    part[:files] << file_size
  end
end

def deep_sum(hash)
  sum = 0
  hash.each do |key, value|
    if key == :files
      sum += value.sum
    else
      sum += deep_sum(value)
    end
  end
  sum
end

@sums = []
def deep(hash)
  @sums << deep_sum(hash)
  keys = hash.keys.reject { |key| key.is_a? Symbol }
  keys.each do |key|
    deep(hash[key])
  end
end

# part 1
deep(file_system)
p @sums.select { |value| value <= 100000 }.sum

# part 2
fs = 70000000 - deep_sum(file_system)
need = 30000000 - fs
p @sums.select { |value| value >= need }.min
