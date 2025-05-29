require "debug"

current_password = "cqjxjnds"

def valid_password?(password)
  invalid_characters = %w[i o l]
  return false if invalid_characters.any? { |c| password.include?(c) }
  return false unless password.chars.each_cons(3).any? { |a, b, c| b == a.next && c == b.next }

  pairs = []
  i = 0
  while i < password.length - 1
    if password[i] == password[i + 1]
      pairs << i
      i += 2
    else
      i += 1
    end
  end

  return false unless pairs.length >= 2

  true
end

loop do
  current_password = current_password.next
  break if valid_password?(current_password)
end

puts current_password
