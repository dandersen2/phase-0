# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 3 hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @guess = guess
  end

  def guess(guess)
    puts "Please pick a number, any number."
    @guess = gets.chomp
    if @guess > @answer
      return :high
    elsif @guess == @answer
      return :correct
    elsif @guess < @answer
      return :low

  def solved(@guess)
    if @guess == @answer
      return true
    else
      return false
  end

end

game = GuessingGame.new(17)
      p game.guess





# Refactored Solution






# Reflection