# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent 3 hours on this challenge.

# Pseudocode

# Input: An array of strings such as ['A', 'B', 'C', 'D', 'E', 'F']
# Output: Returns a randomly selected string from the array above (input) or an ArgumentError if the input array was empty
# Steps:
  # 1) First, create a die class where the methods will reside.
  # 2) Create class methods for "Die" class to initialize it, to accept the input array, and to "roll" the die.
  # 2) Second, determine possible outputs from the input array. If array is empty, raise an Argument Error.
  # 3) Determine the length of the input array to use as in the random number generator, which will select one "side" from any of the inputs.
  # 4) Randomly select one of the strings from the input array.
  # 5) Output the selected string.

# Initial Solution

# class Die
#   def initialize(labels)
#     raise ArgumentError.new("Your number of sides must be greater than zero.") if labels.length == 0
#     @labels = labels
#   end

#   def sides
#     @labels.length
#   end

#   def roll
#     @labels[rand(0..@labels.length - 1)]
#   end
# end

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# die = Die.new(['Danny','Tom','Julian','Dion','leGarrette','Rob','Brandon'])
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
# p die.roll

#Office Hour Question: Is there a better way to test that a random
# generating method such as this actually does use all of the possible
# inputs without putting so many tests like this? Obviously, using a
# smaller input array would make it more likely that all of the
# inputs were used in a small number of tests but what if you had
# a huge number of inputs and wanted to confirm that each one of
# them would be called after an infinite number of trials, if necessary?




# Refactored Solution
# Not sure how to re-factor this?

class Die
  def initialize(labels)
    raise ArgumentError.new("Your number of sides must be greater than zero.") if labels.length == 0
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end






# Reflection

# QUESTION: What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#      ANSWER: The logic here was very similar to that of the numbers die. The only difference in implementing this was the need for a "length" method to be used on labels in the sides method so that it would return a number. Also, in this case I was able to use the index of the array to pull a random string out of it as opposed to a random number but this is essentially the same function. Since our input is an array, the .sample method was particularly useful and easy to implement.

# QUESTION: What does this exercise teach you about making code that is easily changeable or modifiable?
#      ANSWER: I was able to copy the basic structure of my other die class and just change a few of the details which made this assignment much easier than creating it from scratch. I don't think it would be to hard to make both of these classes into one, so that they could accept either a number of sides, OR an array of strings as their input.

# QUESTION: What new methods did you learn when working on this challenge, if any?
#      ANSWER: The rand method, which I had already used for the other die class was useful as well as the sample method, which I had seen before but never actually used. This was especially useful for this purpose.

# QUESTION: What concepts about classes were you able to solidify in this challenge?
#      ANSWER: The overall structure of a class, the initialize method, and the class methods is becoming more familiar to me now.
