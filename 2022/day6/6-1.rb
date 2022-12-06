require 'set'

input = open('input.txt').read
signal = input.chars

def packet_marker(signal, size)
  signal.each_with_index do |_char, i|
    if signal[i...i + size].to_set.size == size
      p i + size
      break
    end
  end
end

# part 1
packet_marker(signal, 4)
# part 2
packet_marker(signal, 14)
