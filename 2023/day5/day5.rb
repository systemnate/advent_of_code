data = open("./sample.txt").read.split("\n\n")

seeds = data[0].split(" ").grep(/\d+/).map(&:to_i)

def parse_map(data_to_parse)
  data = data_to_parse.split(" ").grep(/\d+/).each_slice(3).to_a.map { |arr| arr.map(&:to_i) }

  data.each_with_object({}) do |(dest,src,range),hash|
    destination = (dest...dest+range).to_a
    source = (src...src+range).to_a

    hash.merge!(source.zip(destination).to_h)
  end
end

seed_to_soil = parse_map(data[1])
seed_to_fertilizer = parse_map(data[2])
fert_to_water = parse_map(data[3])
water_to_light = parse_map(data[4])
light_to_temp = parse_map(data[5])
temp_to_humid = parse_map(data[6])
humidity_to_location = parse_map(data[7])

seeds = seeds.map do |seed|
  soil = seed_to_soil[seed] || seed
  fert = seed_to_fertilizer[soil] || soil
  water = fert_to_water[fert] || fert
  light = water_to_light[water] || water
  temp = light_to_temp[light] || light
  humid = temp_to_humid[temp] || temp
  loc = humidity_to_location[humid] || humid
  loc
end

binding.irb
p seeds.min
