require "debug"
require "strscan"


def look_and_say(string)
  new_string = +""
  scanner = StringScanner.new(string)

  until scanner.eos?
    char = scanner.getch
    count = 1

    while scanner.peek(1) == char
      scanner.getch
      count += 1
    end

    new_string << count.to_s
    new_string << char
  end

  new_string
end

string = "3113322113"

40.times do |i|
  string = look_and_say(string)
end

puts string.length

# part 2

string = "3113322113"

50.times do |i|
  string = look_and_say(string)
end

puts string.length
