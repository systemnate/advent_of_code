require "set"

data = open("./input.txt").read.split("\n")

symbols = []

data.each_with_index do |row, i|
  row.each_char.with_index do |char, j|
    next if char == "."
    next if char =~ /\d/

    symbols << [i,j]
  end
end

number_locations = []

symbols.each do |(i,j)|
  [
    [-1,-1],
    [-1,0],
    [-1,1],
    [0,-1],
    [0,1],
    [1,-1],
    [1,0],
    [1,1]
  ].each do |(di,dj)|
    ni = i + di
    nj = j + dj

    if data[ni][nj] =~ /\d/
      number_locations << [ni,nj,i,j,data[i][j]]
    end
  end
end

number_starts = Set.new

number_locations.each do |(i,j,ss,se,sym)|
  while data[i][j-1] =~ /\d/
    j = j - 1
  end
  number_starts << [i,j,ss,se,sym]
end

result = number_starts.map do |(i,j,ss,se,sym)|
  [data[i][j..].to_i,ss,se,sym]
end

Day3Data = Struct.new(:num, :symbol_start, :symbol_end, :symbol)

result = result.map { |(num,ss,se,sym)| Day3Data.new(num,ss,se,sym) }

result = result.reject { |data| data.symbol != "*" }

result = result.chunk { |res| [res.symbol_start, res.symbol_end] }.to_h

result = result.each_with_object([]) do |(key,value),arr|
  next if value.count != 2

  arr << value.map(&:num)
end

p result.map { |(a,b)| a * b }.sum
