module JankenAsobi
  class Program
    attr_reader :name
    def initialize
      @name = "program"
    end

    def show_hand
      rand(3)
    end
  end

  class Man
    attr_reader :name
    def initialize
      @name = "you"
    end

    def show_hand
      begin
        print "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー\n(0,1,2いずれかを入力してEnter)"
        n = gets.chomp
      end until n == "0" or n == "1" or n == "2"
      n.to_i
    end
  end

  class Game
    def initialize(program_hand, man_hand)
      @program_hand = program_hand
      @man_hand = man_hand
    end
    
    def game(n)
      program_hand = @program_hand.show_hand
      man_hand = @man_hand.show_hand
      judgement(program_hand, man_hand)
    end

    def judgement(program_hand, man_hand)
      print "あなたの手:#{Hand[program_hand]}, プログラムの手:#{Hand[man_hand]}で\n"
      if program_hand == man_hand
        puts "引き分けです。"
        return true
      elsif (program_hand - man_hand) % 3 == 1
        puts "あなたの勝ちです"
        return false
      else
        puts "あなたの負けです"
        return false
      end
    end
  end

  def self.play
    program_hand = Program.new
    man_hand = Man.new
    judge = Judge.new(program_hand, man_hand)
    1.times {|i| judge.game(i + 1)}
  end

end