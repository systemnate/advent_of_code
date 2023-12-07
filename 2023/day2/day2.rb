data = open("./input.txt").read.split("\n")

parsed_data = data.each_with_object({}) do |d, hash|
  game_id = d.match(/Game (\d+):/)&.captures&.first&.to_i

  hash[game_id] = []

  sub_games = d.split("; ")

  sub_games.each do |sub|
    blue  = sub.match(/(\d+) blue/)&.captures&.first.to_i
    red   = sub.match(/(\d+) red/)&.captures&.first.to_i
    green = sub.match(/(\d+) green/)&.captures&.first.to_i

    hash[game_id] << { blue: blue, red: red, green: green }
  end
end

possible_games = parsed_data.select do |key, value|
  value.all? { |sub| sub[:blue] <= 14 && sub[:red] <= 12 && sub[:green] <= 13 }
end

p possible_games.keys.sum

fewest = parsed_data.map do |key, value|
  blue  = value.map { |h| h[:blue]  }.max
  red   = value.map { |h| h[:red]   }.max
  green = value.map { |h| h[:green] }.max

  blue * red * green
end

p fewest.sum
