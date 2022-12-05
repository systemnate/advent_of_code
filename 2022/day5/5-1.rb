require 'pry'
# reads modified input (just the crates)
input = open('input.txt')
  .read.split("\n")
  .map do |row|
    row
      .chars # convert to chars
      .each_slice(4) # chunk into groups of 4
      .to_a.map(&:join) # join back together
      .map { |row| row =~ /(\w)/ ? $1 : "" } # take just the crate or empty string
  end

queues = input.transpose.map! { |row| row.reject(&:empty?) } # transpose rows => columns

# read and parse just the instructions
instructions = open('instructions.txt').read.split("\n").map { |row| row.scan(/\d+/).map(&:to_i) }

# process instructions - part 1
instructions.each do |instruct|
  take, from, to = instruct

  from_queue = queues[from - 1]
  to_queue = queues[to - 1]

  take.times do
    to_move = from_queue.shift(1)
    to_queue.unshift(to_move)
  end

  queues.map!(&:flatten)
end

queues.each do |queue|
  print queue[0]
end
puts ""


# reset queues
queues = input.transpose.map! { |row| row.reject(&:empty?) }

# process instructions - part 2
instructions.each do |instruct|
  take, from, to = instruct

  from_queue = queues[from - 1]
  to_queue = queues[to - 1]

  to_move = from_queue.shift(take)
  to_queue.unshift(to_move)
  queues.map!(&:flatten)

  queues.map!(&:flatten)
end

queues.each do |queue|
  print queue[0]
end
puts ""
