# Factorial

# I worked on this challenge [by myself, with: ].

# Pseudocode:
# take your number
# create array of the number, and which changes in the number multiplied by every number below it using (!) to change the array's value


# Your Solution Below
  def factorial(n)
    if n == 0
      return 1
    else
      #fact = Array.new(n) { |f| f = (f+2)-1}  #(THIS WORKS!)
      fact_array = Array.new(n) { |f| f = f+1}   #(THIS WORKS!)
      #fact = Array.new(n) { |n| f = n+1}   #(THIS WORKS!)
      fact_array.inject(:*)
      #x = fact_array.inject(:*)
      #p x
    end
  end

  factorial(10)


#def factorial(n)
#  until ((n-1)=0)
#
#    n*(n-1)
# Your code goes here
#end