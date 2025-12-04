# frozen_string_literal: true

require "debug"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)

# io.readlines(chomp: true).map(&:chars)
grid = AOC::Parser.graph(raw)

class Grid
  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end

  def paper_count
    paper_count = 0

    grid.each_with_index do |row, rix|
      row.each_with_index do |col, cix|
        next unless col == "@"

        count = 0
        AOC::DIRECTIONS.each do |dy, dx|
          next unless in_bounds?(rix + dy, cix + dx)

          count += 1 if grid[rix + dy][cix + dx] == "@"
        end

        paper_count += 1 if count < 4
      end
    end

    paper_count
  end

  def paper_count_part_two
    paper_count = 0

    loop do
      paper_removed = 0
      grid.each_with_index do |row, rix|
        row.each_with_index do |col, cix|
          next unless col == "@"

          count = 0

          AOC::DIRECTIONS.each do |dy, dx|
            next unless in_bounds?(rix + dy, cix + dx)

            count += 1 if grid[rix + dy][cix + dx] == "@"
          end

          next unless count < 4

          paper_count += 1
          grid[rix][cix] = "."
          paper_removed += 1
        end
      end

      break if paper_removed.zero?
    end

    paper_count
  end

  private

  def in_bounds?(row, col)
    return false if grid.dig(row, col).blank?

    row.between?(0, grid.length - 1) && col.between?(0, grid[0].length - 1)
  end
end

g = Grid.new(grid)
puts g.paper_count
puts g.paper_count_part_two

__END__
..@@.@@@@.
@@@.@.@.@@
@@@@@.@.@@
@.@@@@..@.
@@.@@@@.@@
.@@@@@@@.@
.@.@.@.@@@
@.@@@.@@@@
.@@@@@@@@.
@.@.@@@.@.
