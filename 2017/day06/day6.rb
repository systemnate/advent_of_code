require "debug"

data = DATA.read.chomp.split.map(&:to_i)
size = data.size
set = Set.new
count = 0

loop do
  max_value = data.max
  max_index = data.index(max_value)
  current_index = max_index

  max_value.times do
    if current_index + 1 > size - 1
      current_index = 0
    else
      current_index += 1
    end

    data[current_index] += 1
    data[max_index] -= 1
  end
  count += 1

  if set.include?(data)
    puts count
    return
  end
  set << data
end
__END__
4	1	15	12	0	9	9	5	5	8	7	3	14	5	12	3
