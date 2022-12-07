# advent of code day 7
#

input = open('sample.txt').read.split("\n")
file_system = Hash.new([])
stack = []

input.each_with_index do |command, index|
  next if command == "$ ls"

  if command.start_with?("$ cd") && !command.end_with?("..")
    directory = command.split(" ")[2]
    stack.push(directory)
    file_system[stack.join("/").gsub("//", "/")] = []
  elsif command.end_with?("..")
    stack.pop
  else command.start_with?(/\d/)
    file_system[stack.join("/").gsub("//", "/")].push(command)
  end
end

p file_system
p '---'
p file_system.values.map { |value| value }
p '---'
#p file_system.values.map { |group| group.select { |value| value =~ /\d+/ }.map { |group| group.grep(/\d/).map { |file| file =~ /(\d+)/ ; $1}}.map { |group| group.map(&:to_i) }.map(&:sum).select { |file| file <= 100000 }}
