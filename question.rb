module MathGame
  class Question

    def initialize
      @incorrect_answer =
        ['Sorry, that is incorrect.',
        'Nope. Better luck next guess.',
        'Good try but effort alone does not win games.',
        'No that answer will not do.',
        'All that answer gets you is a big X.',
        'Wrong. Do yourself a favour and grab a calculator before your next turn.']
    end

    def ask_question(player)
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      @correct_answer = @num1 + @num2
      puts "#{player}: What does #{@num1} plus #{@num2} equal?"
      @answer = gets.chomp.to_i
      if (@answer == @correct_answer)
        puts "That is the correct answer."
        return true
      else
        puts @incorrect_answer.sample
        return false
      end
    end
  end
end