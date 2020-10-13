# 2 player math game
# - math question is generated each turn by picking 2 numbers between 1, 20
# - both player have 3 lives, lose life if answer wrong
# - end of each turn, game outs new scores for both players
# - game ends when a player loses all their lives
# - at game over, game announces who won and winning scores
# P1: what does 5 plus 3 equal?
# > 9
# P1: Nope
# P1: 2/3 vs P2: 3/3
# ----New TURN----
# P2: what does 2 plus 6 equal?
# ...
# P1 wins with a score of 1/3
# ----GAME OVER----
# Good bye!

rand(20) + 1
Game

Question(a, b) 2 num between 1, 20
3 lives (score)
  wrong, -1 to life
    if a player score == 0, show winner score
end turn, show scores

Player

p1 = Player.new
p2 = Player.new

