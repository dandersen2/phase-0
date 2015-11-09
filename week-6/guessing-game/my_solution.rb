# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 3 hours on this challenge.

# Pseudocode

# Input: The answer or number that you want to try to locate & the guess,
 # which is the attempt to locate answer

# Output: High, low, correct based on the comparison of answer and guess
 # & True or False based on whether the target has been guessed or not

# Steps:
# 1) Create the guessing game class and initialize it
# 2) find which variables that you will need across the entirety of the guessing game process. These should go in the initialize method
# 3) accept a guess and compare it to the target number
# 4) Tell the user if this guess is high, low, or correct based on the comparison in step 3
# 5) Determine if the game has been "solved" or not based on the outputs in step 4


# Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess == @answer
      return :correct
    elsif @guess < @answer
      return :low
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end

end

# game = GuessingGame.new(17)
# p game.guess(17)
# p game.solved?

# Refactored Solution

# class GuessingGame

#   def initialize(answer)
#     @answer = answer
#   end

# NOT WORKING YET --> Thought this might be another interesting way to do it but if and elsif are simpler and achieve the same result
# Not sure how to refactor further without making code more complex.
#   def guess(guess)
#     @guess = guess
#     case @guess
#     when > @answer
#       return :high
#     when == @answer
#       return :correct
#     when < @answer
#       return :low
#     end
#   end

#   def solved?
#     @guess == @answer
#   end

# end

# game = GuessingGame.new(17)
# p game.guess(17)
# p game.solved?



# Reflection

# QUESTION: How do instance variables and methods represent the characteristics
# and behaviors (actions) of a real-world object?
#     ANSWER: In this case, my instance variable of "answer" is essentially
# a placeholder for the number that I have selected. It is the digital
# equivalent of me writing the number 57 on a piece of paper and putting it in
# an envelope before the game begins. The guess method takes the number that
# is entered and compares it to the answer in my envelope and returns output
# based on its calculations. If the program were expanded it could guess
# the number itself or take input from the user using a gets command.

# QUESTION: When should you use instance variables? What do they do for you?
#     ANSWER: Instance variables are important for working between different
#  methods within a class. Since local variables are only accessible to the
#  methods in which they are created, they have a limited usage and are better
# for intermediary steps that only need to be performed within a single
# method. Instance variables allow you to make your code cleaner by
# minimizing the number of variables that you create simply to store data in
# between methods.

# QUESTION: Explain how to use flow control. Did you have any trouble using
# it in this challenge? If so, what did you struggle with?
#     ANSWER: Flow control, as its name suggests, controls how the
# interpreter "flows" through the code and makes decisions based on the
# conditional statements if, else, while, until, etc. In this case the flow
# control was fairly straightforward for my guess method, using an if,
# and two elsif statements for the 3 possible outputs. In my refactor,
# I tried to use a case method but it did not seem suited for this
# situation and I could not get it to work correctly.

# QUESTION: Why do you think this code requires you to return symbols?
# What are the benefits of using symbols?
#     ANSWER:  Symbols seem to be more permanent than strings or variables
# and can be accessed across all the mehtods in a class, I believe. Also
# since they are stored in one place, as opposed to creating a new object
# for each instance, in a case where you had lots of strings or data,
# symbols would reduce the amount of memory used.
