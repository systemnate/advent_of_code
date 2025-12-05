# frozen_string_literal: true

require "debug"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)
data = AOC::Parser.raw_data(raw)

ranges, values = data.split("\n\n")
ranges = ranges.split("\n").map { _1.split("-") }.map { |a, b| (a.to_i..b.to_i) }
values = values.split("\n").map { _1.to_i }

# part 1
count = 0
values.each do |value|
  count += 1 if ranges.any? { |range| range.cover?(value) }
end
puts count

# part 2
# it's too inefficient to store a unique count for this many values in a set/hash
# instead, let's merge the ranges together and then compute their sizes
intervals = ranges.map { |range| [range.begin, range.end] }
intervals.sort_by! { |start_val, _end_val| start_val }
merged_start, merged_end = intervals.first

merged = intervals[1..].each_with_object([]) do |(interval_start, interval_end), merged|
  if interval_start <= merged_end + 1
    merged_end = [merged_end, interval_end].max
  else
    merged << (merged_start..merged_end)
    merged_start = interval_start
    merged_end   = interval_end
  end
end

merged << (merged_start..merged_end)
puts merged.map(&:size).sum
__END__
3-5
10-14
16-20
12-18

1
5
8
11
17
32
