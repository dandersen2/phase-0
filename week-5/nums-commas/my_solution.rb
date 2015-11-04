# Numbers to Commas Solo Challenge

# I spent 4 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# an integer that is given as the argument of this method.

# What is the output? (i.e. What should the code return?)
# The output is a string containing the numerical equivalent of the input but in the form of a string and with commas in the appropriate
# places.
# What are the steps needed to solve the problem?:

# 1) Take the integer that is given and first see if it requires a comma. If it doesnt, return it. otherwise move to next step
# 2) Convert the integer to a string and give it a new name to represent it.
# 3) split the string into its constituent characters and place them in an array
# 4) iterate through the array and place a comma every 4th decimal place starting from the right.
# 5) Join the array back together into a string and return it.

# 1. Initial Solution

def separate_comma(integer)
  if integer.to_s.length <= 3
     comma_string = integer.to_s
  else
    integer_array = integer.to_s.split('')
    integer_array.each_with_index do |n, i|
      if i % 4 == 0
        integer_array.insert(-i, ",")
      end
    comma_string = integer_array.join("")
    comma_string[0] = ""
    end
  end
  p comma_string
end

# separate_comma(0000000)
# separate_comma(10000000000)
# separate_comma(1000000000)
# separate_comma(100000000)
# separate_comma(10000000)
# separate_comma(1000000)
# separate_comma(100000)
# separate_comma(10000)
# separate_comma(1000)
# separate_comma(100)
# separate_comma(10)
# separate_comma(1)




# 2. Refactored Solution



# def separate_comma(integer)
#   if integer.to_s.length <= 3
#     p integer
#   else
#     integer.to_s.each do |i|
#       if (i % 3 == 0)
#         integer.to_s.insert(-i, ",")
#       end
#     end
#   end
# end


# 3. Reflection

# What was your process for breaking the problem down? What different approaches
# did you consider?
#   This one took a little while to contemplate because my first idea turned out
#   to be too difficult for me to implement.

# Was your pseudocode effective in helping you build a successful initial
# solution?
#   Once I went back to the drawing board, the pseudocode helped to guide my
#   code as i moved through the steps.

# What Ruby method(s) did you use when refactoring your solution? What
# difficulties did you have implementing it/them? Did it/they significantly
# change the way your code works? If so, how?

#   In my research it seemed like the regex functions would be helpful for these
#   problems but I could not get them to work and had no idea how to use them yet
#   . the refactored solution using the "each_with_index" was the easiest way I
#   could find to do it. using "each" alone was much more complicated.

# How did you initially iterate through the data structure?
#   I used an each_with_index to move through the data structure based on the
#   index which would allow my to insert a comma every 4th location.

# Do you feel your refactored solution is more readable than your initial
# solution? Why?
#    My refactored solution makes more sense to use but is not necessarily much
#    easier to read or implement.