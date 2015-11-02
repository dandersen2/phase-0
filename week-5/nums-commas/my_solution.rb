# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?

# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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





# 2. Refactored Solution




# 3. Reflection