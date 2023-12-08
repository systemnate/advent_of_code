dirs, _, *graph = open("./input.txt").read.split("\n")

# make an adjacency list
graph = graph.each_with_object({}) do |line, hash|
  node, left, right = line.scan(/[A-Z]+/)

  hash[node] = [left, right]
end

current = "AAA"
count = 0

# keep looping through directions visiting
# nodes in the graph until ZZZ is found
dirs.chars.cycle.each do |dir|
  count += 1
  current = graph[current].last if dir == "R"
  current = graph[current].first if dir == "L"
  break if current == "ZZZ"
end

p count
