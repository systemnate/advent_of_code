data = open("./input.txt").read.split("\n\n")

seeds = data[0].split(" ").grep(/\d+/).map(&:to_i)


seeds = seeds.each_slice(2).map do |group|
  (group.first...group.first + group.last)
end

binding.irb

def parse_map(data_to_parse)
  data_to_parse.split(" ").grep(/\d+/).each_slice(3).to_a.map { |arr| arr.map(&:to_i) }
end

def map_value(parsed_data, value)
  group = parsed_data.select { |group| (group[1]...group[1]+group[2]).cover?(value) }&.first

  if group
    offset = group[0] - group[1]
    value + offset
  else
    value
  end
end

seed_to_soil = parse_map(data[1])
soil_to_fertilizer = parse_map(data[2])
fert_to_water = parse_map(data[3])
water_to_light = parse_map(data[4])
light_to_temp = parse_map(data[5])
temp_to_humid = parse_map(data[6])
humidity_to_location = parse_map(data[7])

seeds = seeds.map do |seed|
  soil = map_value(seed_to_soil, seed)
  fert = map_value(soil_to_fertilizer, soil)
  water = map_value(fert_to_water, fert)
  light = map_value(water_to_light, water)
  temp = map_value(light_to_temp, light)
  humid = map_value(temp_to_humid, temp)
  loc = map_value(humidity_to_location, humid)
  loc
end

