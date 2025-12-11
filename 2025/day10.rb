require "debug"
require_relative "../utils.rb"

raw = AOC::Input.resolve(ARGV, DATA)
data = AOC::Parser.lines(raw).map { _1.split(" ") }

class Machine
  attr_reader :target, :buttons, :joltage

  def initialize(target, buttons, joltage)
    @target = target
    @buttons = buttons
    @joltage = joltage
  end

  def shortest
    masked_target = array_to_mask(target)
    masked_buttons = buttons.map { |idx| button_to_mask(idx) }
    start = 0
    return 0 if masked_target == start
    visited = { start => true }
    previous = {}
    queue = [start]

    until queue.empty?
      state = queue.shift

      masked_buttons.each_with_index do |bmask, i|
        next_state = state ^ bmask
        next if visited[next_state]

        visited[next_state] = true
        previous[next_state] = [state, i]

        if next_state == masked_target
          path_buttons = []
          curr = next_state

          while curr != start
            ps, button_idx = previous[curr]
            path_buttons << button_idx
            curr = ps
          end

          return path_buttons.size
        end

        queue << next_state
      end
    end
  end

  private

  def array_to_mask(array)
    mask = 0
    array.each_with_index do |bit, idx|
      mask |= (1 << idx) if bit == 1
    end
    mask
  end

  def button_to_mask(indices)
    mask = 0
    indices.each do |idx|
      mask |= (1 << idx)
    end
    mask
  end
end

data = data.map do |procedure|
  target, *buttons, joltage = procedure
  target = target[1..-2].chars.map { |char| char == "." ? 0 : 1 }
  buttons = buttons.map { _1.scan(/\d+/) }.map { _1.map(&:to_i) }
  joltage = joltage.scan(/\d+/).map(&:to_i)
  Machine.new(target, buttons, joltage)
end

p data.map(&:shortest).sum

__END__
[.##.] (3) (1,3) (2) (2,3) (0,2) (0,1) {3,5,4,7}
[...#.] (0,2,3,4) (2,3) (0,4) (0,1,2) (1,2,3,4) {7,5,12,7,2}
[.###.#] (0,1,2,3,4) (0,3,4) (0,1,2,4,5) (1,2) {10,11,11,5,10,5}
