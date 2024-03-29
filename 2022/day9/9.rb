require 'pry'
require 'pry-byebug'

input = open('input.txt').read.split("\n")

board = Array.new(1000, Array.new(1000, '.'))

visited = []

head_position = [4, 0]
tail_position = [4, 0]
move_queue = []

def move(board, pos, dir)
  case dir
  when 'U'
    pos[0] -= 1
  when 'D'
    pos[0] += 1
  when 'R'
    pos[1] += 1
  when 'L'
    pos[1] -= 1
  end
  pos
end

def print_board(board)
  board.each do |row|
    puts row.join
  end
end

# for visual debugging
def update_board(board, pos, char)
  board[pos[0]][pos[1]] = char
end

input.each do |dir|
  dir, n = dir.split(' ')
  n.to_i.times do
    move_queue << dir
    head_position = move(board, head_position, dir)
    if head_position.zip(tail_position).map { |a, b| a - b }.any? { |n| n.abs > 9 }
      visited << tail_position.dup
      while move_queue.size > 10
        tail_position = move(board, tail_position, move_queue.shift)
      end
    end
  end
end

p visited.uniq.size