# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Trevor Newcomb.

# 0. total Pseudocode
# make sure all pseudocode is commented out!
# 1) create method called "total"
# 2) In method "total", add all elements together

# Input: "array"
# Output: "sum"
# Steps to solve the problem.

# 1. total initial solution
  def total(array)
    x = array.inject(:+)
    p x
  end

# 3. total refactored solution



# 4. sentence_maker pseudocode

# make sure all pseudocode is commented out!
# Input: "array"
# Output: full sentence
# Steps to solve the problem.
#   1)Create method called "sentence_maker"
#   2) Capitolize the first element in the array
#   3) Add all elements together including a space after each
#   4) Add an element that is a "." to the end of the string or to the last element in the string

# 5. sentence_maker initial solution

  def sentence_maker(array)
    array[0].capitalize!  #! changes the value in the original array
    array.join(" ")+ "."
  end

# 6. sentence_maker refactored solution
# !! CANNOT SEEM TO GET THIS WORKING !!

  # def sentence_maker(array)
  #   array[0].capitalize!
  #   array[1..(i-1)].each do |word|
  #     word + " "
  #   end

  #   puts '.'

  # end
