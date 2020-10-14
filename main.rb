# require
require 'byebug'

# gets.chomp, raise some_val.inspect, byebug

class Game
  attr_accessor :player_one, :player_two

  def initialize
    @player_one = 3
    @player_two = 3
  end

  def exe #game loop
  end

  def question
    a = rand(20) + 1
    b = rand(20) + 1
    "What does #{a} plus #{b} equal?"
  end

  def score
  end

end

game1 = Game.new
puts "player 1..."
puts game1.question
print gets.chomp

puts "player 2..."
puts game1.question


# game1.player_one = 0
# puts "player two's score------"
# puts game1.player_two
# puts "player one's score------"
# puts game1.player_one

# if game1.player_one == 0
#   puts "----Game Over----"
# end