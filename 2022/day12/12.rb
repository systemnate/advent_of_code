mapping = ('a'..'z').to_a.zip(1..26).to_h
input = open('sample.txt')
          .read
          .split("\n")
          .map { |row| row.chars }
          .map { |row| row.map { |char| mapping[char] } }

input.each do |row|
  puts row.map { |item| item.to_s.rjust(2) }.join(' ')
end

x, y = 0, 0
starting = input[x][y]

while true
  if input[x]
end