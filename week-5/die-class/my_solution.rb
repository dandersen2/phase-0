# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 2.5 hours on this challenge.

# 0. Pseudocode

# Input: a new die and a number of sides that it should have
# Output: a random number between 1 and the number of sides
# Steps:
 # 1) Create the die
 # 2) Determine the number of sides
 # 3) return an error if that number of sides is invalid such as 0 or .5
 # 4) Generate a random number that is valid for the number of sides given in the argument
 # 5) return the "roll" to the user


# 1. Initial Solution

# die = Die.new(6) #This creates a new die object with 6 sides
# p die.sides # returns 6
# p die.roll # returns a random number between 1 and 6

class Die
  def initialize(sides)
    unless sides.is_a?(Integer) && sides > 0
      raise ArgumentError.new("Your number of sides must be a positive integer")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# die = Die.new(6)
# p die.sides
# p die.roll
# p die.roll
# p die.roll
# p die.roll
# p die.roll
# p die.roll
# p die.roll
# p die.roll
# p die.roll
# p die.roll
# p die.roll

# ___________________________________________
# USEFUL TOOLS:
# prng.rand(1..6)  => one of [1,2,3,4,5,6]

#unless amount.is_a?(Number)
#     raise ArgumentError.new("Only numbers are allowed")
#   end

#   sides = gets.chomp "How many sides does your die have?"
#   rolls = gets.chomp "How many times would you like to roll it?"
# _____________________________________________

# 3. Refactored Solution

# def roll_die(sides, rolls)
#   rolls.times do
#     puts rand(1..sides)
#   end
# end

# roll_die(6, 4)

# This refactor doesn't use a class but I'm not sure how else to do it besides my initial solution.

# 4. Reflection

# What is an ArgumentError and why would you use one?
#   an argument error is an error involving the argument that is specific to a
#   particular method or class. You could use one if your method has particular
#   parameters that it needs in order to make the program run and Ruby does
#   not automatically return a clear error when those parameters aren't met.
#   This will usually occur by default if you input the wrong number of errors
#   to the method but it is also useful for more specific case such as if you
#   are asking a user for their birthday. The argument that is passed in needs
#   to be an integer between 1 and 31 because no month has greater or fewer
#   days than that.

# What new Ruby methods did you implement? What challenges and successes did you
# have in implementing them?
#   In this challenge I used the built-in random number generator [rand()] to
#   simulate the roll of the die. This was suprisingly easy to get working
#   although the first example used "prng" which would not work, so I plan to
#   go back and read more about that to see what other functionality it has.
#   Using the instance variables was also new but they seemed to work prety
#   easily using the format of the example in the video.

# What is a Ruby class?
#  A class in Ruby is a blueprint for a data type. It determines what the class is
#  named and what an object of that class consists of and how it can interact with
#  other objects. Strings and Integers are examples of builtin classes in Ruby.

# Why would you use a Ruby class?
#   Ruby classes are useful because they can be used acorss methods and handle
#   variables between them or even from different files. Once you have created a
#   useful class, you dont have to re-create it each time you want to use it like
#   you would have to for methods or local variables.

# What is the difference between a local variable and an instance variable?
#   A local variable can be used within a method where it is created and no where
#   else. If you try to access it outside of the parent method, you will recieve and
#   'undefined variable' error from the Ruby interpreter. An instance variable
#   is bound to a specific instance of a class but can be used anywhere that
#   instance is used.

# Where can an instance variable be used?
#   An instance variable is bound to an instance of a class (an object) and can
#   be used in any method of that object.