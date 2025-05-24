require "debug"
require "digest"

door_id = "ffykfhsq"

five_zeros_count = 0
password = ""

puts "solving part 1..."
idx = 0
loop do
  attempt = Digest::MD5.hexdigest("#{door_id}#{idx}")

  if attempt.start_with?("00000")
    password << attempt[5]
    five_zeros_count += 1
    puts password
  end

  break if five_zeros_count == 8

  idx += 1
end

puts "Part 1: #{password}"

# part 2

puts "solving part 2..."
idx = 0
password = Array.new(8)

idx = 0
loop do
  attempt = Digest::MD5.hexdigest("#{door_id}#{idx}")

  if attempt.start_with?("00000")
    position = Integer(attempt[5]) rescue nil
    value = attempt[6]

    if !position.nil? && position.between?(0, 7) && password[position].nil?
      password[position] = value
      p password
    end
  end

  break if password.compact.length == 8

  idx += 1
end

puts "Part 2: #{password.join}"
