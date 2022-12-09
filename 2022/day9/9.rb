input = open('sample.txt').read.split("\n")

board = [
  ['.','.','.','.','.','.'],
  ['.','.','.','.','.','.'],
  ['.','.','.','.','.','.'],
  ['.','.','.','.','.','.'],
  ['H','.','.','.','.','.'],
]

head_position = [4, 0]
tail_position = [4, 0]

def move(board, pos, dir)
  board[pos[0]][pos[1]] = '#'

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
  board[pos[0]][pos[1]] = 'H'
  pos
end

def print_board(board)
  board.each do |row|
    puts row.join
  end
end

# interactive board
#loop do
#  print "Enter a direction to move (NSEW): "
#  dir = gets.chomp
#  head_position = move(board, head_position, dir)
#  for row in board
#    puts row.join
#  end
#end
#
# programmatic board
input.each do |dir|
  direction, n = dir.split(' ')
  n.to_i.times do
    head_position = move(board, head_position, direction)
    print_board(board)
    puts
  end
end

print_board(board)
