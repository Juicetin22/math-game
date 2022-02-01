class Game
  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2].shuffle
    @turn = 1
    @limit = "0/3"
  end

  def display_score
    puts " -------------------------- "
    puts "Current scores"
    puts " -------------------------- "
    players.each {|player| puts "#{player.name}: #{player.remaining}"}
  end

  def play
    puts " -------------------------- "
    puts "Time to play! It's #{players.first.name} vs #{players.last.name}!!!"
    puts " -------------------------- "

    puts "--------- NEW TURN ---------"
    questioning_player = @players.first
    answering_player = @players.last

    numbers = questioning_player.question

    solution = answering_player.answer(numbers.first, numbers.last)

    if (solution == numbers.first + numbers.last) 
      puts "#{questioning_player.name}: YES! You are correct"
      answering_player.calculate_score(true)
    else
      puts "#{questioning_player.name}: Seriously? No!"
      answering_player.calculate_score(false)
    end
    
    display_score
 
  end
end