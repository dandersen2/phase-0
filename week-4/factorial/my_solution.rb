# Factorial

# I worked on this challenge with: Trevor Newcomb.

# Pseudocode:
# Create your method named "factorial"
# define what happens if your input is zero
# otherwise, create an array of all the numbers from your input number down to 1, decreasing by 1 each time
# Mulitply all the numbers in the array together

# Your Solution Below
  def factorial(n)
    if n == 0
      return 1
    else
      fact_array = Array.new(n) { |f| f = f+1}   #(THIS WORKS)
      fact_array.inject(:*)
    end
  end

  factorial(10)