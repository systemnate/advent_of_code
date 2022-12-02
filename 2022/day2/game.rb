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
