# Create a Bingo Scorer
# I worked on this challenge with Amaar Fazlani
# I spent 2.5 hours on this challenge.

# Pseudocode
# 1) Input array will consist of 5 2-digit numbers 00-99

# 1) Horizontal Checker:
#   Accept the input array and iterate over it:
#     FOR each row within the bingo board:
#       FOR each element within that row, check to see if the number equals X (number at equivalent location on bingo_board)
#         IF current element is equal to X, add 1 to COUNTER and move on to next element
#         ELSE move on to next element
#       return true or false: TRUE if counter = 5, False if counter != 5
#         (NOTE: True = horizontal Bingo)
#     Return true or false after running inner 'for' loop

# 2) Vertical Checker:
#   Accept the input array and flatten into a 1 dimensional array:
#     FOR every fifth element, check to see if it matches X (equivalent number in solution bingo_board) (for i = 0, we check flattened_array[0], flattened_array[5], flattened_array[10], flattened_array[15, flattened_array[20]])
#       Increment counter by 1 in order to check the next vertical column
#         IF current element is equal to X, add 1 to bingo_counter and move on to next element
#         ELSE move on to next element
#       return true or false: TRUE if bingo_counter = 5, False if counter != 5
#         (NOTE: True = vertical Bingo)
#     Return true or false after running inner 'for' loop

# 3) Diagonal Checker:
#   Accepts the input array  index 0, index 6, 13, 21, 30 (Left to right), index 4, 8, 12, 16, 20

# array.each do |x|
#   counter = 0
#   number.each do |each_number|

#     if number != 'x' (counter +=1)

#       if counter = 0

#         p you win

# # sample boards

#         for i in (0..4) (ROWS)
#           if i[0] == X[i][0]
#             add 1 to counter


# i + 5

# for i in (0..4) # (0 checks 0,5,10,15,20)(1 checks 1,6,11,16,21)(2 checks 2,7,12,17,22)
#   for (var j = i; j < board.length; j + 5)
#     board[j] = x?
#     counter +=1


horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]



# p horizontal.flatten

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


left_to_right = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


right_to_left = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]


# # Initial Solution
class Bingo_scorer
  def initialize(board)
    @board = board
  end

  def bingo_print
    print @board
  end

  def winVertical
    flattened_board = @board.flatten
    # p flattened_board
    j = 0
    for j in (0..4) do
        counter = 0
        i = j
        while i < flattened_board.length do
          if flattened_board[i] == 'x'
            counter += 1
          end
          i += 5
        end
        if counter == 5
            print "VERTICAL BINGO!"
        end
    end
  end

  def winHorizontal
  i = 0
    for i in (0..4) do
      # print board[i]
      counter = 0
      each_number = 0
      for each_number in (0..4) do
        # print board[i][each_number]
        if @board[i][each_number] == 'x'
          counter += 1
        end
      end
      if counter == 5
        print "HORIZONTAL BINGO!"
      end
        # print counter
    end
  end

  def winDiagonal

    flattened_board = @board.flatten
    i = 0
    counter = 0
        while i < flattened_board.length do
          if flattened_board[i] == 'x'
            counter += 1
          end
          i += 6
        end
        if counter == 5
          print "DIAGONAL left to right BINGO!"
        end

    flattened_board = @board.flatten
    i = 4
    counter = 0
        while i < flattened_board.length do
          if flattened_board[i] == 'x'
            counter += 1
          end
          i += 4
        end
        if counter == 5
          print "DIAGONAL right to left BINGO!"
        end

  end


end

horiz = Bingo_scorer.new(left_to_right)
# horiz.bingo_print
horiz.winVertical
horiz.winHorizontal
# horiz.winVertical
horiz.winDiagonal
# end

# Reflections:
# QUESTION: What concepts did you review in this challenge?
#   Answer:  In this challenge we reviewed many of the important
#   core concepts from Ruby including creating and using classes,
#   using instance variables, using a for..in loop, using while loops,
#   if/else conditional statements, iterating through arrays, the
#     .flatten method, and then using driver code to run our methods
#     and test that the code is working.

# QUESTION: What is still confusing to you about Ruby?
#   Answer:  I was still pretty confused when trying to access
#   arrays and access values within nested data structures like we
#   did on line 124 where we are in a loop within a loop, trying to
#   access a value in an array within an array, but I think at this
#   point I'm ok with that process being a little confusing because I
#   think its an objectively complicated part of this challenge. We
#   managed to get it to run correctly after some tweaking and testing
#   and without too much trouble though.

# QUESTION: What are you going to study to get more prepared for Phase 1?
#   Answer:  I am studying different ways to use classes using the
#   .method syntax and how variables with classes determine their scope.
#   Classes and objects(in JS) are still the hardest parts for me at
#   this point.




