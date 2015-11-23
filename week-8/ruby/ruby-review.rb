# I worked on this challenge by myself.
# This challenge took me 2 hours.


# Pseudocode
# 1) accept input array
# 2) ITERATE through the input array and  run a fizzbuzz check on each element
# 3) IF "fizz" return "fizz" to output array
#    ELSIF "buzz" return "buzz" to output array
#    ELSIF "fizzbuzz" return "fizzbuzz" to output array.
# 4) return or print output array

# ____________________________________________________________

# Initial Solution
# EXAMPLE Input and Output: super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]


# def super_fizzbuzz(array)
#   fizz_buzz_print(array)
# end

# def fizzbuzz?(num)
#   case
#     when num % 5 == 0 && num % 3 ==0 then "FizzBuzz"
#     when num % 3  == 0 then "Fizz"
#     when num % 5  == 0 then "Buzz"
#     else num
#   end
# end

# # Prints out FizzBuzz
# def fizz_buzz_print(array)
#   output_array = Array.new
#   array.each do |num|
#     # output_array.push(fizzbuzz?(num))
#     output_array << fizzbuzz?(num)
#   end
#   p output_array
# end

# fizz_buzz_print([1, 3, 5, 15, 16, 19, 35])


# ____________________________________________________________
# Refactored Solution

def super_fizzbuzz(array)
  output_array = Array.new
  array.each do |num|
    output_array << fizzbuzz?(num)
  end
  p output_array
end

def fizzbuzz?(num)
  case
    when num % 5 == 0 && num % 3 ==0 then "FizzBuzz"
    when num % 3  == 0 then "Fizz"
    when num % 5  == 0 then "Buzz"
    else num
  end
end

# super_fizzbuzz([1, 3, 5, 15, 16, 19, 35])


# ____________________________________________________________

# Reflection

# QUESTION: What concepts did you review or learn in this challenge?
#   Answer:  I reviewed creating methods in Ruby, using the case/when
#     built-in method, performing arithmetic calculations, iterating
#     over arrays, pushing to an array, and outputting using p vs.
#     puts and print.

# QUESTION: What is still confusing to you about Ruby?
#   Answer:  I find it hard now to remember the specific syntax of
#   ruby methods vs. that of JavaScript after switching back and
#   forth between them. The basics of iteration, manipulating outputs,
#   conditionals, and calling methods within other methods are
#   relatively clear. I am still a bit confused as to the use of
#   classes in Ruby beyond their basic implementation.

# QUESTION: What are you going to study to get more prepared for Phase 1?
#   Answer:  I need to review creating and using classes as well
#   as how to use more of the built-in enumerable methods in Ruby.
#   I should also look back at accessing data within nested data
#   structures.
