require 'pry'
require 'pry-byebug'

parsed_monkeys = {}
monkeys = open('sample.txt')
            .read
            .split("\n\n")
            .map { |monkey| monkey.split("\n") }

monkeys.each do |monkey|
  monkey_number = monkey[0].scan(/\d+/).first.to_i
  starting_items = monkey[1].scan(/\d+/).map(&:to_i)
  operation = monkey[2].match(/old\s[+*]\s(\d+|old)/).to_s
  test = monkey[3].scan(/\d+/).map(&:to_i).first.to_i
  monkey_when_true = monkey[4].scan(/\d+/).first.to_i
  monkey_when_false = monkey[5].scan(/\d+/).first.to_i
  parsed_monkeys[monkey_number] = {}
  parsed_monkeys[monkey_number][:starting_items] = starting_items
  parsed_monkeys[monkey_number][:operation] = operation
  parsed_monkeys[monkey_number][:test] = test
  parsed_monkeys[monkey_number][true] = monkey_when_true
  parsed_monkeys[monkey_number][false] = monkey_when_false
  parsed_monkeys[monkey_number][:count] = 0
end

20.times do
  monkeys.size.times do |i|
    monkey = parsed_monkeys[i]
    until monkey[:starting_items]&.empty?
      monkey[:count] += 1
      old = monkey[:starting_items].shift
      new = eval(monkey[:operation]) / 3
      if new % monkey[:test] == 0
        parsed_monkeys[monkey[true]][:starting_items] << new
      else
        parsed_monkeys[monkey[false]][:starting_items] << new
      end
    end
  end
end

p parsed_monkeys.values.map { |monkey| monkey[:count] }.max(2).inject(&:*)