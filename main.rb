require './game'
require './player'

print "Please enter your name: "
name_1 = gets.chomp

print "Please enter your opponent's name: "
name_2 = gets.chomp

player_1 = Player.new(name_1)
player_2 = Player.new(name_2)

game = Game.new(player_1, player_2)
game.play