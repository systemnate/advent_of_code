# frozen_string_literal: true

require "debug"
require "httparty"
require "stringio"
require "dotenv"
require "active_support/core_ext/object/blank"

Dotenv.load(File.join(__dir__, ".env"))

module AOC
  module Input
    def self.resolve(argv, data_io)
      if argv && argv[0] && argv[1]
        year = Integer(argv[0])
        day = Integer(argv[1])
        fetch_aoc(year, day)
      else
        data_io
      end
    end

    # Fetch from AoC using session cookie (prefer ENV['AOC_SESSION'])
    def self.fetch_aoc(year, day, session = ENV['AOC_SESSION'])
      raise "Set AOC_SESSION environment variable with your AoC session cookie." if session.nil? || session.empty?

      url = "https://adventofcode.com/#{year}/day/#{day}/input"
      resp = HTTParty.get(
        url,
        headers: {
          "Cookie" => "session=#{session}",
          "User-Agent" => "aoc-util (ruby) - contact: ndalo@hey.com"
        }
      )

      case resp.code
      when 200 then resp.body
      when 400..499 then raise "AoC fetch failed (#{resp.code}). Check session, year/day, and that the puzzle is unlocked."
      else
        raise "AoC fetch failed (#{resp.code})."
      end
    end

    def self.io_for(data_str)
      StringIO.new(data_str.dup)
    end
  end

  module Parser
    def self._io(data)
      data.is_a?(String) ? StringIO.new(data) : data
    end

    def self.raw_data(data)
      io = _io(data)
      io.read.chomp
    end

    def self.graph(data)
      io = _io(data)
      io.readlines(chomp: true).map(&:chars)
    end

    def self.lines(data)
      io = _io(data)
      io.readlines(chomp: true)
    end

    def self.chars(data)
      io = _io(data)
      io.readlines(chomp: true).join.chars
    end

    def self.line_chars(data)
      io = _io(data)
      io.readlines(chomp: true).map(&:chars)
    end

    def self.numbers(data)
      io = _io(data)
      io.readlines(chomp: true).map(&:to_i)
    end

    def self.line_numbers(data)
      io = _io(data)
      io = io.readlines(chomp: true).map(&:chars)
      io.map { _1.map(&:to_i) }
    end
  end

  DIRECTIONS = [
    UP         = [-1, 0],
    DOWN       = [1 , 0],
    LEFT       = [0 ,-1],
    RIGHT      = [0 , 1],
    UP_LEFT    = [-1,-1],
    UP_RIGHT   = [-1, 1],
    DOWN_LEFT  = [1 ,-1],
    DOWN_RIGHT = [1 , 1]
  ].freeze

  FOUR_DIRECTIONS = [UP, DOWN, LEFT, RIGHT]

  Coord = Struct.new(:row, :col) do
    def +(other)
      Coord.new(row + other.row, col + other.col)
    end

    def -(other)
      Coord.new(row - other.row, col - other.col)
    end

    def *(scalar)
      Coord.new(row * scalar, col * scalar)
    end

    def inspect
      to_a
    end

    def to_s
      "(#{row}, #{col})"
    end

    def to_a
      [row, col]
    end
  end

  class GridWithCoords
    attr_reader :grid, :coord

    def initialize(grid, coord)
      @grid = grid
      @coord = coord

      unless grid[coord.row][coord.col]
        raise "Coordinate #{coord} out of bounds for grid of size #{grid.length}x#{grid[0].length}"
      end
    end

    def current
      grid[@coord.row][@coord.col]
    end

    def inspect
      grid.each_with_index.map do |row, r|
        row.each_with_index.map do |cell, c|
          if r == coord.row && c == coord.col
            "█"
          else
            " #{cell} "
          end
        end.join
      end.join("\n")
    end

    def update(new_value)
      grid[coord.row][coord.col] = new_value
    end

    def up
      @coord += Coord.new(-1, 0) if in_bounds?(@coord + Coord.new(-1, 0))
    end

    def down
      @coord += Coord.new(1, 0) if in_bounds?(@coord + Coord.new(1, 0))
    end

    def left
      @coord += Coord.new(0, -1) if in_bounds?(@coord + Coord.new(0, -1))
    end

    def right
      @coord += Coord.new(0, 1) if in_bounds?(@coord + Coord.new(0, 1))
    end

    def in_bounds?(coord)
      return false if grid.dig(coord.row, coord.col).blank?

      coord.row.between?(0, grid.length - 1) && coord.col.between?(0, grid[0].length - 1)
    end
  end
end
