require 'set'
require 'active_support'
require 'active_support/core_ext/array'

valves = DATA
         .read
         .split("\n")
         .map { |data| data.split(' ') }
         .each_with_object({}) do |data, hash|
  hash[data[1]] = {
    flow_rate: data[4][/rate=(\d+)/],
    connections: data[9..].join.split(',')
  }
end.transform_keys(&:to_s)

$count = 0
$visited = Set.new
$pressure = 0

def dfs(graph, start, visited = Set.new)
  puts start
  visited << start

  graph[start][:connections]&.each do |node|
    dfs(graph, node, visited) unless visited.include?(node)
  end
end

dfs(valves, 'AA')
p valves
__END__
Valve AA has flow rate=0; tunnels lead to valves DD, II, BB
Valve BB has flow rate=13; tunnels lead to valves CC, AA
Valve CC has flow rate=2; tunnels lead to valves DD, BB
Valve DD has flow rate=20; tunnels lead to valves CC, AA, EE
Valve EE has flow rate=3; tunnels lead to valves FF, DD
Valve FF has flow rate=0; tunnels lead to valves EE, GG
Valve GG has flow rate=0; tunnels lead to valves FF, HH
Valve HH has flow rate=22; tunnel leads to valve GG
Valve II has flow rate=0; tunnels lead to valves AA, JJ
Valve JJ has flow rate=21; tunnel leads to valve II
