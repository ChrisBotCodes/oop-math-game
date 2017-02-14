require "pry"
require_relative 'game'
require_relative 'player'
require_relative 'question'

game = MathGame::Game.new

player1 = MathGame::Player.new("Player 1")
player2 = MathGame::Player.new("Player 2")
players = [player1, player2]

question = MathGame::Question.new

# NEW GAME banner
game.start_game

# game starts with player 1
current_player = players[0]

# arbitrarily set a score for game initiation
verify_score = 3

loop do
  break if verify_score < 1
  unless question.ask_question(current_player.name)
    current_player.reduce_score
  end

  # SCORE banner
  game.score
  puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"

  verify_score = current_player.score

  # change player for new turn
  if current_player == players[0]
    current_player = players[1]
  else
    current_player = players[0]
  end

  if verify_score > 0
    # NEW TURN banner
    puts
    game.new_turn
  end

end

# display winner & final score
puts "#{current_player.name} wins with a score of #{current_player.score}/3"

# GAME OVER banner
game.game_over