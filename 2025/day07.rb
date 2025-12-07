require "set"
require_relative "../utils.rb"

raw  = AOC::Input.resolve(ARGV, DATA)
data = AOC::Parser.graph(raw)
rows = data.size
cols = data.first.size

graph = {}
start_row = start_col = nil

data.each_with_index do |row, r|
  row.each_with_index do |ch, c|
    case ch
    when "^"
      graph[[r, c]] = 0
    when "S"
      start_row, start_col = r, c
    end
  end
end

first_split = nil
r = start_row + 1
while r < rows
  if data[r][start_col] == "^"
    first_split = [r, start_col]
    break
  end
  r += 1
end

graph[first_split] = 1

graph.keys.each do |row, col|
  next unless graph[[row, col]] == 1

  # left
  if col - 1 >= 0
    r = row + 1
    while r < rows
      if data[r][col - 1] == "^"
        left = [r, col - 1]
        graph[left] = 1 if graph[left] == 0
        break
      end
      r += 1
    end
  end

  # right
  if col + 1 < cols
    r = row + 1
    while r < rows
      if data[r][col + 1] == "^"
        right = [r, col + 1]
        graph[right] = 1 if graph[right] == 0
        break
      end
      r += 1
    end
  end
end

puts graph.count { |_k, v| v == 1 }

__END__
.......S.......
...............
.......^.......
...............
......^.^......
...............
.....^.^.^.....
...............
....^.^...^....
...............
...^.^...^.^...
...............
..^...^.....^..
...............
.^.^.^.^.^...^.
...............
