# frozen_string_literal: true

require "debug"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)
grid = AOC::Parser.graph(raw)

class Grid
  attr_reader :grid
  attr_accessor :paper_count

  def initialize(grid)
    @grid = grid
    @paper_count = 0
  end

  def paper_count
    grid.each_with_index do |row, rix|
      row.each_with_index do |col, cix|
        next unless col == "@"

        count = 0
        AOC::DIRECTIONS.each do |dy, dx|
          if in_bounds?(rix + dy, cix + dx)
            if grid[rix + dy][cix + dx] == "@"
              count += 1
            end
          end
        end
        @paper_count = @paper_count + 1 if count < 4
      end
    end

    @paper_count
  end

  private

  def in_bounds?(row, col)
    return false if grid.dig(row, col).blank?

    row.between?(0, grid.length - 1) && col.between?(0, grid[0].length - 1)
  end
end

g = Grid.new(grid)
puts g.paper_count

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
