require "set"
require_relative "../utils.rb"

raw  = AOC::Input.resolve(ARGV, DATA)
grid = AOC::Parser.graph(raw)
height = grid.size
start_row = start_col = nil

grid.each_with_index do |row, r|
  if (c = row.index("S"))
    start_row, start_col = r, c
    break
  end
end

seen  = Set.new
stack = [[start_row, start_col]]

until stack.empty?
  beam_row, beam_col = stack.pop
  r = beam_row + 1

  while r < height
    if grid[r][beam_col] == "^"
      pos = [r, beam_col]
      break if seen.include?(pos)

      seen << pos

      stack << [r, beam_col - 1]
      stack << [r, beam_col + 1]

      break
    end

    r += 1
  end
end

puts seen.size
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
