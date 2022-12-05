queues = [
  ["N","Z"],
  ["D","C","M"],
  ["P"]
]

instructions = "move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2".split("\n").map { |row| row.scan(/\d+/).map(&:to_i) }


p instructions
instructions.each do |instruct|
  take, from, to = instruct
  from_queue = queues[from-1]
  to_queue = queues[to-1]

  take.times do |n|
    to_move = from_queue.shift(1)
    to_queue.unshift(to_move)
  end

  queues.map!(&:flatten)
end

p queues
