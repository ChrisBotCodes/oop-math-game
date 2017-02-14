module MathGame
  class Player

    attr_accessor :name, :score

    def initialize(name)
      @name = name
      @score = 3
    end

    def reduce_score
    @score -= 1
    end

  end
end