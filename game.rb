require_relative './player'

class Game

  def initialize
    @player1 = Player.new("Player One")
    @player2 = Player.new("Player Two")
    @players=[@player1, @player2]
    @round=1
  end

  def question
    question_for = @players.first #current player's turn
    
    a = rand(20) + 1
    b = rand(20) + 1
    puts "#{question_for.name}: What does #{a} plus #{b} equal?"
    player_answer = gets.chomp.to_i
    
    sleep 1

    if (player_answer != a + b) #if player answers incorrectly, -1 to lives
      @players.first.incorrect
    else
      puts 'Good stuff!'
    end  

    @players.rotate! #other player's turn
  end

  def score
    puts " ------------------ "
    @players.each{|player| puts "#{player.name}: #{player.lose? ? 'LOSES' : player.lives}"}   
    puts " ------------------ "    

    sleep 1
  end

  def winner
    winner = @players.find{|player| !player.lose?}
    puts "#{winner.name} wins with a score of #{winner.lives}"
  end

  def game_over?
    @players.select{|player| player.lose?}.count > 0
  end

  def play
    until (game_over?) do
      question
      score
    end
    winner
  end

end