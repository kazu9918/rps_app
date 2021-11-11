class Program
  def initialize
    @name = "Program"
  end

  def hand
    rand(3)
  end
end

class Player
  def initialize
    @name = "you"
  end

  def hand
    h = gets.to_i
    h == "0" || h == "1" || h == "2"
  end
end



class Janken
  Hand = [:グー, :チョキ, :パー]
end

class Jadge
  def game
    hand_program =
  end
end