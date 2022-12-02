
input = open('./input2.txt').read.split("\n").map { |row| row.split(" ") }

score = 0
# part 1
input.each do |game|
  case game
  when ["A", "X"] # rock vs rock
    then score += (1 + 3)
  when ["A", "Y"] # rock vs paper
    then score += (2 + 6)
  when ["A", "Z"] # rock vs scissors
    then score += (3 + 0)
  when ["B", "X"] # paper vs rock
    then score += (1 + 0)
  when ["B", "Y"] # paper vs paper
    then score += (2 + 3)
  when ["B", "Z"] # paper vs scissors
    then score += (3 + 6)
  when ["C", "X"] # scissors vs rock
    then score += (1 + 6)
  when ["C", "Y"] # scissors vs paper
    then score += (2 + 0)
  when ["C", "Z"] # scissors vs scissors
    then score += (3 + 3)
  end
end
p score

score = 0
# X = lose, Y = draw, Z = win
# part 2
input.each do |game|
  case game
  when ["A", "X"] # rock vs scissors
    then score += (3 + 0)
  when ["A", "Y"] # rock vs rock
    then score += (1 + 3)
  when ["A", "Z"] # rock vs paper
    then score += (2 + 6)
  when ["B", "X"] # paper vs rock
    then score += (1 + 0)
  when ["B", "Y"] # paper vs paper
    then score += (2 + 3)
  when ["B", "Z"] # paper vs scissors
    then score += (3 + 6)
  when ["C", "X"] # scissors vs paper
    then score += (2 + 0)
  when ["C", "Y"] # scissors vs scissors
    then score += (3 + 3)
  when ["C", "Z"] # scissors vs rock
    then score += (1 + 6)
  end
end
p score
