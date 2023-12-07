require "set"

rows = open("./input.txt").read.split("\n")

symbols = []

rows.each_with_index do |row, x|
  row.each_char.with_index do |char, y|
    next if char == "."
    next if char =~ /\d/

    symbols << [x, y]
  end
end

number_locations = []

symbols.each do |(x,y)|
  [
    [-1, -1],
    [-1, 0],
    [-1, 1],
    [0, -1],
    [0, 1],
    [1, -1],
    [1, 0],
    [1, 1]
  ].each do |(dx,dy)|
    nx = x + dx
    ny = y + dy

    if rows[nx][ny] =~ /\d/
      number_locations << [nx, ny]
    end
  end
end

number_starts = Set.new
number_locations.each do |(x,y)|
  while rows[x][y-1] =~ /\d/
    y -= 1
  end
  number_starts << [x, y]
end

result = number_starts.map do |(x,y)|
  rows[x][y..].to_i
end

p result.sum
