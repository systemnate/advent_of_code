input = """Time:        49     87     78     95
Distance:   356   1378   1502   1882""".split("\n")

time, distance = input.map { |line| line.split(" ") }.map { |arr| arr.join }.map { |arr| arr.scan(/\d+/) }.flatten.map(&:to_i)

zipped = [[time,distance]]

result = zipped.each_with_object([]) do |(time,distance), array|
  winners = (0..time).map do |t|
    result = t * (time - t)
  end.select { |time| time > distance }.to_a
  array << winners
end

result = result.map(&:count)

p result.reduce(&:*)
