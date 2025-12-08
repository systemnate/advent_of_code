require_relative "../utils.rb"
require "debug"

raw = AOC::Input.resolve(ARGV, DATA)
data = AOC::Parser.lines(raw).map(&:split)

instruction_pointer = 0
registers = { "a" => 0, "b" => 0, "c" => 0, "d" => 0 }

def resolve(str, registers)
  if str =~ /[a-z]/
    registers[str]
  else
    str.to_i
  end
end

while instruction_pointer < data.length
  jumped = false

  case data[instruction_pointer]
  in ["cpy", source, destination]
    registers[destination] = resolve(source, registers)
  in ["inc", register]
    registers[register] = registers[register] + 1
  in ["dec", register]
    registers[register] = registers[register] - 1
  in ["jnz", source, amount]
    unless resolve(source, registers) == 0
      instruction_pointer += amount.to_i
      jumped = true
    end
  else
    raise "unexpected"
  end

  instruction_pointer += 1 unless jumped
end

puts registers.fetch("a")
__END__
cpy 41 a
inc a
inc a
dec a
jnz a 2
dec a
