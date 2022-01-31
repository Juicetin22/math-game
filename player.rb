class Player
  def initialize(name)
    @name = name
    @score = 3
    @remaining = "#{@score}/3"
  end
end

player_1 = Player.new("Bob");
p player_1
