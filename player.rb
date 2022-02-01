class Player
  attr_reader :name
  attr_accessor :score, :remaining

  def initialize(name)
    @name = name
    @score = 3
    @remaining = "#{@score}/3"
  end

  def question
    print "#{name}! Pick a number from 1 - 20: "
    number_1 = gets.chomp.to_i

    print "Pick another number from 1 - 20: "
    number_2 = gets.chomp.to_i

    numbers = [number_1, number_2]
  end

  def answer(number_1, number_2)
    puts "#{name}! What does #{number_1} plus #{number_2} equal?"
    answer = gets.chomp.to_i
  end

  def calculate_score(correct)
    if (!correct)
      @score -= 1
      @remaining = "#{@score}/3"
    end
  end
end
