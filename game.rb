module MathGame
  class Game

    attr_accessor :player1, :player2

    def initialize
      @player1 = 'Player 1'
      @player2 = 'Player 2'
    end

    def start_game
      puts "----- NEW GAME -----"
    end

    def game_over
      puts "----- GAME OVER -----"
    end

    def new_turn
      puts "----- NEW TURN -----"
    end

    def score
      puts "------ SCORE ------"
    end

  end
end