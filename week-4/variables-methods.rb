#Full Name Greeting program:

# puts "Please enter your first name"
# first_name = gets.chomp
# puts "Please enter your middle name"
# middle_name = gets.chomp
# puts "Please enter your last name"
# last_name = gets.chomp

# puts "Hello " + first_name + ' ' + middle_name + ' ' + last_name + '!'

#Better favorite number program:

puts "What is your favorite number?"
fav = gets.chomp
new_fav = fav.to_i + 1
puts "Are you sure you wouldn't prefer " + new_fav.to_s + " as your favorite number?"

# REFLECTIONS:
# How do you define a local variable?
#   A local variable is assigned simply by typing a name and assigning it some value to hold.

# How do you define a method?
#   A method is defined using the def command, followed by the name of the method and any parameters that the method may need to use later.

# What is the difference between a local variable and a method?
#    A method is a a small program that carries out a certain set of procedures when called. A local variable is a placeholder for a value within a particular method. Local variables cannot be used outside of the methods that they are created in.

# How do you run a ruby program from the command line?
#   A ruby program can be run from the command line by using "ruby [file_name].rb" while in the directory where the file exists. ruby programs can also be run within "IRB", which is a realtime ruby code evaluator by typing "irb", hitting enter, and then pasting or typing in your code on the next line.

# How do you run an RSpec file from the command line?
#   An rspec file is run by typing "rspec [file_name].rb" in the command line while in the directory where the .spec file exists.

# What was confusing about this material? What made sense?
#   The most confusing part of this section was trying to locate errors in my code based on the error messages in the command line. It is important to be very deliberate about where quotes and spaces and plus signs are placed. Small, simple methods with only a couple of variables seem pretty easy to understand at this point. The difference between parameters and arguments in a method is still a little confusing.


# 4.3 Variables and Methods (medium) Solution files:

# link to 4.3.1: Return a formatted address solution file:

#   https://github.com/dandersen2/phase-0/blob/master/week-4/address/my_solution.rb

# Link to 4.3.2: Defining Math Methods solution file:

#   https://github.com/dandersen2/phase-0/blob/master/week-4/math/my_solution.rb
