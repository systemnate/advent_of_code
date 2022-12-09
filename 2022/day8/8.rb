# advent of code day 8
require 'pry'
require 'pry-byebug'
require 'awesome_print'
# read input
input = open('input.txt')
          .read
          .split("\n")
          .map { |data| data.chars.map(&:to_i) }

# part 1
rows = input.size
cols = input.first.size

top_and_bottom_row = cols * 2
middle_rows = 2 * (rows - 2)
outside_edges = top_and_bottom_row + middle_rows
puts "outside_edges: #{outside_edges}"

inner_edges = 0

scenic_score = 0
scenic_scores = []
input[1..-2].each_with_index do |row, i|
  row[1..-2].each_with_index do |char, j|
    top_rows = input.transpose[j + 1][0..i]
    bottom_rows = input.transpose[j + 1][i+2..]
    left_rows = input[i + 1][0..j]
    right_rows = input[i + 1][j + 2..]

    # trip = rand(1..9000)
    # if trip == 3731
    #   binding.pry
    # end

    top_score, right_score, bottom_score, left_score = 0, 0, 0, 0

    left_rows.reverse.each do |n|
      if char > n
        left_score += 1
      end
      if char <= n
        left_score += 1
        break
      end
    end

    right_rows.each do |n|
      if char > n
        right_score += 1
      end
      if char <= n
        right_score += 1
        break
      end
    end

    top_rows.reverse.each do |n|
      if char > n
        top_score += 1
      end
      if char <= n
        top_score += 1
        break
      end
    end

    bottom_rows.each do |n|
      if char > n
        bottom_score += 1
      end
      if char <= n
        bottom_score += 1
        break
      end
    end

    scenic_score = top_score * right_score * bottom_score * left_score
    scenic_scores << scenic_score

    if char > top_rows.max || char > bottom_rows.max || char > left_rows.max || char > right_rows.max
      inner_edges += 1
    end
  end
end

puts "inner_edges: #{inner_edges}"
puts "total: #{outside_edges + inner_edges}"
# 1030750 too high
# 606441 too high
p scenic_scores.count
p scenic_scores.max