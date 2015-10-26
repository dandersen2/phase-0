# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
#    170
# 3. What is the type of error message?
#    syntax error
# 4. What additional information does the interpreter provide about this type of error?
#    unexpected end of input, expecting keyword_end
# 5. Where is the error in the code?
#    After the last period at the end of the file
# 6. Why did the interpreter give you this error?
#    The interpreter will continue to loop this method until it meets its condition, but you have to end the loop or it will not be able to move on to the next step.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#    35
# 2. What is the type of error message?
#    <main>
# 3. What additional information does the interpreter provide about this type of error?
#    undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
#     There is no location given.
# 5. Why did the interpreter give you this error?
#    The variable is not assigned any value.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#    50
# 2. What is the type of error message?
#    `<main>'
# 3. What additional information does the interpreter provide about this type of error?
#    undefined method `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
#    No location is given for this error.
# 5. Why did the interpreter give you this error?
#    I think this error is because the format indicates that this should be a method but "def" is missing before the name.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#    lines 65 and line 69
# 2. What is the type of error message?
#    Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#    in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#    The argument 'I hate Kyle' is not given when the method is defined so the interpreter is not expecting it.
# 5. Why did the interpreter give you this error?
#    A parameter or () must be given when the method is defined for it to accept an argument.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#    84
# 2. What is the type of error message?
#    Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#    on line 88
# 5. Why did the interpreter give you this error?
#    This time the interpreter IS expecting an argument and isnt given one when the method is called.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#    105
# 2. What is the type of error message?
#    Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#    Wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#    line 109
# 5. Why did the interpreter give you this error?
#    The interpreter is expecting arguments lie and name but only recieves the lie.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#    124
# 2. What is the type of error message?
#    Type Error
# 3. What additional information does the interpreter provide about this type of error?
#    in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
#    The string on line 124
# 5. Why did the interpreter give you this error?
#    You cannot multiply a number by a string, only a string by a number in Ruby. "Respect my authoritay" * 5 would work

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#    139
# 2. What is the type of error message?
#    ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#    divided by 0
# 4. Where is the error in the code?
#    The last digit of the line
# 5. Why did the interpreter give you this error?
#    You cannot divide by zero in Ruby, or in life for that matter.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    155
# 2. What is the type of error message?
#    LoadError
# 3. What additional information does the interpreter provide about this type of error?
#    cannot load such file
# 4. Where is the error in the code?
#    The require relative method
# 5. Why did the interpreter give you this error?
#    The relative file cannot be found because it doesnt exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
#   The first error threw me off because it referneced line 170 which was nowhere near the code itself.

# How did you figure out what the issue with the error was?
#   The expecting keyword_end clued me in to the fact that Ruby was trying to find an "end" to the method which was why it searched all the way to the end of the file.

# Were you able to determine why each error message happened based on the code?
#   Yes, the error types and messages are helpful in indicating what to look for and where.

# When you encounter errors in your future code, what process will you follow to help you debug?
#   First, I will look to the line that is indicated and if applicable, the ^ symbol which shows exactly where the error occured. Next, I will refer to the error type and the message to try and find what the problem is. If none of those works, I can google the particular error to see if I can find exactly why it happened.

