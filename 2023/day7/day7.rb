
class Card
  attr_reader :hand, :tally, :ranks

  def initialize(hand)
    @hand = hand.chars
    @tally = @hand.tally
    @ranks = ["2","3","4","5","6","7","8","9","T","J","Q","K","A"]
  end

  def rank
    if five_of_a_kind?
      7
    elsif four_of_a_kind?
      6
    elsif full_house?
      5
    elsif three_of_a_kind?
      4
    elsif two_pair?
      3
    elsif one_pair?
      2
    else
      1
    end
  end

  def <=>(other)
    if self.rank != other.rank
      self.rank <=> other.rank
    else
      self.hand.zip(other.hand).map do |(h1,h2)|
        [ranks.index(h1),ranks.index(h2)]
      end.each do |(h1,h2)|
        if h1 > h2
          return 1
        elsif h2 > h1
          return -1
        else
          next
        end
      end
    end
  end

  def five_of_a_kind?
    tally.values.sort == [5]
  end

  def four_of_a_kind?
    tally.values.sort == [1,4]
  end

  def full_house?
    tally.values.sort == [2,3]
  end

  def three_of_a_kind?
    tally.values.sort == [1,1,3]
  end

  def two_pair?
    tally.values.sort == [1,2,2]
  end

  def one_pair?
    tally.values.max == 2
  end

  def high_card?
    tally.count == 5
  end
end

data = open("./input.txt").read.split("\n").map(&:split)

result = data.map { |d| [Card.new(d[0]),d[1]] }.sort_by { |data| data[0] }.map.with_index do |data,index|
  data[1].to_i * (index+1)
end.sum

p result
