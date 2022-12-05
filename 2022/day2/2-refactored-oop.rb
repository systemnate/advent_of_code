require 'pry'

class Day2
  def initialize(input)
    @input = input
    @input = parse_input
    @score = 0
  end

  def results
    @input.each do |input|
      result = Game.new(*input).results
      @score += ChoicePoints.(input.last)
      @score += ResultPoints.(result)
    end

    puts @score
  end

  private

  def parse_input
    open(@input)
      .read
      .split("\n")
      .map { |row| row.split(" ") }
      .map { |row| row.map(&:to_rps) }
  end
end

class Game
  attr_reader :them, :you

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  def initialize(them, you)
    @them = them
    @you = you
  end

  def results
    if RULES[you] == them
      :win
    elsif you == them
      :draw
    else
      :loss
    end
  end
end

class ChoicePoints
  def self.call(choice)
    {
      :rock => 1,
      :paper => 2,
      :scissors => 3
    }[choice]
  end
end

class ResultPoints
  def self.call(result)
    {
      :loss => 0,
      :draw => 3,
      :win => 6
    }[result]
  end
end

class String
  def to_rps
    {
      'A' => :rock,
      'B' => :paper,
      'C' => :scissors,
      'X' => :rock,
      'Y' => :paper,
      'Z' => :scissors
    }[self]
  end
end

Day2.new('input2.txt').results
