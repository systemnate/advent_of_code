require "debug"

data = DATA.readlines(chomp: true)

# convert into a weighted adjacency list
graph = data.each_with_object(Hash.new { |k, v| k[v] = {} }) do |flight_info, hash|
  parsed_flight_info = flight_info.split(" ")
  from, _, to, _, distance = parsed_flight_info
  distance = distance.to_i

  # add both directions to the graph
  current = hash[from]
  current[to] = distance
  current = hash[to]
  current[from] = distance
end

# get all locations
all_locations = graph.keys | graph.values.first.keys
location_size = all_locations.length

# compute distances between all permutations of locations
distances = all_locations.permutation(location_size).each_with_object([]) do |cities, array|
  total_distance = 0

  cities.each_cons(2).each do |city1, city2|
    total_distance += graph.dig(city1, city2).to_i
  end

  array << total_distance
end

p distances.min
# part 2
p distances.max

__END__
Faerun to Tristram = 65
Faerun to Tambi = 129
Faerun to Norrath = 144
Faerun to Snowdin = 71
Faerun to Straylight = 137
Faerun to AlphaCentauri = 3
Faerun to Arbre = 149
Tristram to Tambi = 63
Tristram to Norrath = 4
Tristram to Snowdin = 105
Tristram to Straylight = 125
Tristram to AlphaCentauri = 55
Tristram to Arbre = 14
Tambi to Norrath = 68
Tambi to Snowdin = 52
Tambi to Straylight = 65
Tambi to AlphaCentauri = 22
Tambi to Arbre = 143
Norrath to Snowdin = 8
Norrath to Straylight = 23
Norrath to AlphaCentauri = 136
Norrath to Arbre = 115
Snowdin to Straylight = 101
Snowdin to AlphaCentauri = 84
Snowdin to Arbre = 96
Straylight to AlphaCentauri = 107
Straylight to Arbre = 14
AlphaCentauri to Arbre = 46
