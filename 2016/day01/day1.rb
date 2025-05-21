require "debug"

data = DATA.read.chomp
data = data.split(", ")

current_direction = "NORTH"
position = [0, 0]

left = {
  "NORTH" => "WEST",
  "EAST" => "NORTH",
  "SOUTH" => "EAST",
  "WEST" => "SOUTH"
}

right = {
  "NORTH" => "EAST",
  "EAST" => "SOUTH",
  "SOUTH" => "WEST",
  "WEST" => "NORTH"
}

data.each do |instruction|
  dir = instruction[0]
  steps = instruction[1..].to_i

  if dir == "R"
    current_direction = right[current_direction]
  else
    current_direction = left[current_direction]
  end

  case current_direction
  when "NORTH"
    position[1] += steps
  when "SOUTH"
    position[1] -= steps
  when "EAST"
    position[0] += steps
  when "WEST"
    position[0] -= steps
  end
end

puts position.sum.abs

# part 2

current_direction = "NORTH"
position = Complex(0, 0)
first_visited = nil
visited = Set.new
visited << position
found = false

data.each do |instruction|
  break if found

  dir = instruction[0]
  steps = instruction[1..].to_i

  if dir == "R"
    current_direction = right[current_direction]
  else
    current_direction = left[current_direction]
  end

  steps.times do
    case current_direction
    when "NORTH"
      position += Complex(0, 1)
    when "SOUTH"
      position += Complex(0, -1)
    when "EAST"
      position += Complex(1, 0)
    when "WEST"
      position += Complex(-1, 0)
    end

    if visited.include?(position)
      first_visited = position
      found = true
      break
    end

    visited << position
  end
end

puts first_visited.real.abs + first_visited.imaginary.abs
__END__
L4, L3, R1, L4, R2, R2, L1, L2, R1, R1, L3, R5, L2, R5, L4, L3, R2, R2, L5, L1, R4, L1, R3, L3, R5, R2, L5, R2, R1, R1, L5, R1, L3, L2, L5, R4, R4, L2, L1, L1, R1, R1, L185, R4, L1, L1, R5, R1, L1, L3, L2, L1, R2, R2, R2, L1, L1, R4, R5, R53, L1, R1, R78, R3, R4, L1, R5, L1, L4, R3, R3, L3, L3, R191, R4, R1, L4, L1, R3, L1, L2, R3, R2, R4, R5, R5, L3, L5, R2, R3, L1, L1, L3, R1, R4, R1, R3, R4, R4, R4, R5, R2, L5, R1, R2, R5, L3, L4, R1, L5, R1, L4, L3, R5, R5, L3, L4, L4, R2, R2, L5, R3, R1, R2, R5, L5, L3, R4, L5, R5, L3, R1, L1, R4, R4, L3, R2, R5, R1, R2, L1, R4, R1, L3, L3, L5, R2, R5, L1, L4, R3, R3, L3, R2, L5, R1, R3, L3, R2, L1, R4, R3, L4, R5, L2, L2, R5, R1, R2, L4, L4, L5, R3, L4
