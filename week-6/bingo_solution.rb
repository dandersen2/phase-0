# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 4 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Use the random letter selector method we created to select a random string from an array of strings for (b,i,n,g,o)
  # Use the random number generator method we created to select the number for (0-100)

# Check the called column for the number called.
  #Iterate through array and each of the sub arrays at the index based on the letter that was called and if the number is at that index in any of the arrays, change its value to 'X'
  # This will require assigning indexes to the bingo array: (bingo_array = [b,i,n,g,o,]) If 'B' is selected search all of the index zero [0] locations in each sub array, 'I' = [1], 'N' = [2], 'G' = [3], 'O' = [4]
  # example for a selection of G54: IF board[i][3] == 54, then change board[i][3] value to 'X'. Iterate over i for all five sub-arrays

# If the number is in the column, replace with an 'x'
  #When the conditions are met for the selecter letter/number pair during the iteration, change the value at that location to 'x' by using board[][] = 'X'

# Display a column to the console
  # Iterate over i in board[i][] and output each value at 'letter' in board[i][letter] so 5 numbers are outputted for any given column selection.

# Display the board to the console (prettily)
  #Display (output) all 5 sub arrays in alignment (use puts so that each one appears on a new line). Use the arrays created by the 'X' methods so that any called locations are already replaced by an 'X'. If possible, remove all commas and brackets and get printout to display B, I, N, G, O in the top row to show the column names.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @letters = ['B', 'I', 'N', 'G', 'O']
#     @numbers = (1..100)
#   end

#   def call_alpha_numeric
#     @alpha = @letters.sample
#     @numeric = rand(@numbers)
#     p @alpha
#     p @numeric
#     # p @alpha + @numeric
#   end

#   def check_for_bingo
#     @letters.each do |letter|
#       if @alpha == letter
#         @bingo_board.each do |row|
#           if row[@letters.find_index(letter)] == @numeric
#             row[@letters.find_index(letter)] = 'X'
#           end
#         end
#       end
#     end
#   end
#
#   def display_bingo_board
#     @bingo_board.each do |row|
#       p row
#       # row.each {|number| p " " + "#{number.to_s}" + " "}
#     end
#   end

# end

# Refactored Solution (GOING TO WORK MORE ON THIS LATER, EVeRY CHANGE I TRY TO IMPLEMENT HAS BROKEN THE CODE)

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ['B', 'I', 'N', 'G', 'O']
    @numbers = (1..100)
  end

  def call_alpha_numeric
    @alpha = @letters.sample
    @numeric = rand(@numbers)
    p @alpha
    p @numeric
    # p @alpha + @numeric
  end

  def check_for_bingo
    @letters.each do |letter|
      if @alpha == letter
        @bingo_board.each do |row|
          if row[@letters.find_index(letter)] == @numeric
            row[@letters.find_index(letter)] = 'X'
          end
        end
      end
    end
  end

  def display_bingo_board
    @bingo_board.each do |row|
      p row
      # row.each {|number| p " " + "#{number.to_s}" + " "}
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call_alpha_numeric
new_game.check_for_bingo
new_game.call_alpha_numeric
new_game.check_for_bingo
new_game.call_alpha_numeric
new_game.check_for_bingo
new_game.call_alpha_numeric
new_game.check_for_bingo
new_game.call_alpha_numeric
new_game.check_for_bingo
new_game.call_alpha_numeric
new_game.check_for_bingo
new_game.call_alpha_numeric
new_game.check_for_bingo

new_game.display_bingo_board

# REFLECTIONS:

# How difficult was pseudocoding this challenge? What do you think
#   of your pseudocoding style?
#      ANSWER: The pseudocoding was fairly straightforward for this
#       challenge, although I find it difficult to effectively describe
#       the steps involved in any detail without using code terminology.
#       I feel as though I should start separating my pseudocode thats
#       in pure english from more detailed psuedocode that actually
#       includes plans for how to implement each step using methods
#       and classes code lingo. The more in-depth explanations
#       would be less understandable to tha layman if they arent
#       familiar with programming but it would make it easier for me to
#       translate my pseudocode steps into actual functioning methods.
#       As it stands now, my steps define what a method should do, but
#       give no real insight into how to accomplish it, whcih makes t
#       he implementation more time-consuming.

# What are the benefits of using a class for this challenge?
#      ANSWER: There are several instance variables that need to be
#      accessed at several points throughout the process and actually
#      changed in the check method, so without using a class, this would
#      be very complicated or would require using global variables.

# How can you access coordinates in a nested array?
#      ANSWER: By iterating over the outer array, and within that iteration,
#      iterating through the sub-arrays works for this purpose. in the case
#      of bingo, the bingo_board contains only arrays so it is simple. If
#      only some of the elements in the outer array are subarrays you would
#      have to use a is_a? method or something similar as sflow control to
#      direct the interpreter into them or on to the next element. If there
#      are more sub arrays within the sub-arrays, like if Xzibit were to star
#      in the sequel to Inception alongside Leo, you could use recursion to
#      continue as deep into the dream world as is necessary.

# What methods did you use to access and modify the array?
#      ANSWER: I used simple .each iterators at the top and sub levels as
#      well as the find_index method for each letter instead of explicitly
#      having to define B as 0, I as 1, N as 2, and so on. Using blocks for
#      the letter (column) and row made this fairly pain-free.

# Give an example of a new method you learned while reviewing the Ruby docs.
# Based on what you see in the docs, what purpose does it serve, and how is
# it called?
#      ANSWER: The find_index method was particularly useful for checking
#      each row only at the correct index for the letter that had been called
#      (eg. 3rd column for 'N', which is at index 2 in the letters array).

# How did you determine what should be an instance variable versus a local
# variable?
#      ANSWER: I needed five instnace variables for the board, the possible
#      input letters, the possible input numbers, and then one for alpha and
#      numeric that was called in any given turn of the game. I could possibly
#      have gotten by with fewer if I were a little more efficient in my
#      implementation but wil lhave to play around some more to achieve this goal.
#      If a variable was only needed temporarily within a single method then I
#      used a local variable. If it was needed across multiple methods I used
#      an instance variable.

# What do you feel is most improved in your refactored solution?
#      ANSWER: The initial solution I have here is actually somewhere between
#      the initialand refactored since I ended up changing it from topt to
#      bottom in the testing phase to get it to work. I'm going to conintue
#      to work on the refactor to pare it down further and get the output "prettier".
