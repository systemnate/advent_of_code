require "debug"

instructions = DATA.readlines(chomp: true)

prereq_count = {}
dependencies =
  instructions.each_with_object(Hash.new { |k, v| k[v] = [] }) do |instruction, hash|
    parsed_instruction = instruction.split(" ")

    # build dependency list
    prereq = parsed_instruction[1]
    dependent = parsed_instruction[-3]
    hash[prereq] << dependent

    # build pre-req count
    prereq_count[prereq] = 0 unless prereq_count.key?(prereq)
    prereq_count[dependent] = 0 unless prereq_count.key?(dependent)
    prereq_count[dependent] += 1
  end

result = ""
ready_steps = prereq_count.select { |step, count| count == 0 }.keys.sort

until ready_steps.empty?
  current_step = ready_steps.shift
  result += current_step

  dependencies[current_step].each do |dependent|
    prereq_count[dependent] -= 1
    if prereq_count[dependent].zero?
      ready_steps << dependent
      ready_steps.sort!
    end
  end
end

puts result

__END__
Step T must be finished before step X can begin.
Step G must be finished before step O can begin.
Step X must be finished before step B can begin.
Step I must be finished before step W can begin.
Step N must be finished before step V can begin.
Step K must be finished before step H can begin.
Step S must be finished before step R can begin.
Step P must be finished before step J can begin.
Step L must be finished before step V can begin.
Step D must be finished before step E can begin.
Step J must be finished before step R can begin.
Step U must be finished before step W can begin.
Step M must be finished before step Q can begin.
Step B must be finished before step F can begin.
Step F must be finished before step E can begin.
Step V must be finished before step Q can begin.
Step C must be finished before step A can begin.
Step H must be finished before step Z can begin.
Step A must be finished before step Y can begin.
Step O must be finished before step Y can begin.
Step W must be finished before step Q can begin.
Step E must be finished before step Y can begin.
Step Y must be finished before step Z can begin.
Step Q must be finished before step R can begin.
Step R must be finished before step Z can begin.
Step S must be finished before step E can begin.
Step O must be finished before step W can begin.
Step G must be finished before step B can begin.
Step I must be finished before step N can begin.
Step G must be finished before step I can begin.
Step H must be finished before step R can begin.
Step N must be finished before step C can begin.
Step M must be finished before step W can begin.
Step Y must be finished before step R can begin.
Step T must be finished before step B can begin.
Step G must be finished before step D can begin.
Step J must be finished before step O can begin.
Step I must be finished before step A can begin.
Step J must be finished before step H can begin.
Step T must be finished before step Y can begin.
Step N must be finished before step H can begin.
Step B must be finished before step V can begin.
Step M must be finished before step R can begin.
Step Y must be finished before step Q can begin.
Step X must be finished before step J can begin.
Step A must be finished before step E can begin.
Step P must be finished before step Z can begin.
Step P must be finished before step C can begin.
Step N must be finished before step Q can begin.
Step A must be finished before step O can begin.
Step G must be finished before step X can begin.
Step P must be finished before step U can begin.
Step T must be finished before step S can begin.
Step I must be finished before step V can begin.
Step V must be finished before step H can begin.
Step U must be finished before step F can begin.
Step D must be finished before step Q can begin.
Step D must be finished before step O can begin.
Step G must be finished before step H can begin.
Step I must be finished before step Z can begin.
Step N must be finished before step D can begin.
Step B must be finished before step Y can begin.
Step J must be finished before step M can begin.
Step V must be finished before step Y can begin.
Step W must be finished before step Y can begin.
Step E must be finished before step Z can begin.
Step T must be finished before step N can begin.
Step L must be finished before step U can begin.
Step S must be finished before step A can begin.
Step Q must be finished before step Z can begin.
Step T must be finished before step F can begin.
Step F must be finished before step Z can begin.
Step J must be finished before step C can begin.
Step X must be finished before step Y can begin.
Step K must be finished before step V can begin.
Step T must be finished before step I can begin.
Step I must be finished before step O can begin.
Step C must be finished before step W can begin.
Step B must be finished before step Q can begin.
Step W must be finished before step Z can begin.
Step D must be finished before step H can begin.
Step K must be finished before step A can begin.
Step M must be finished before step E can begin.
Step T must be finished before step U can begin.
Step I must be finished before step J can begin.
Step O must be finished before step Q can begin.
Step M must be finished before step Z can begin.
Step U must be finished before step C can begin.
Step N must be finished before step F can begin.
Step C must be finished before step H can begin.
Step X must be finished before step E can begin.
Step F must be finished before step O can begin.
Step P must be finished before step O can begin.
Step J must be finished before step A can begin.
Step H must be finished before step Y can begin.
Step A must be finished before step Q can begin.
Step V must be finished before step Z can begin.
Step S must be finished before step L can begin.
Step H must be finished before step E can begin.
Step X must be finished before step I can begin.
Step O must be finished before step R can begin.
