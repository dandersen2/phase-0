# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  i = 0                                     # i works as index for the array: array[2] of [1,3,5,7,9] is 5 b/c index starts at 0
  smallest = list_of_nums[0]                # defines the output variable and sets it to the first valu in array before starting iterator
  while i < list_of_nums.length             # sets loop to go through all values in array including last one, but will stop once i = length
      if list_of_nums[i] < smallest         # conditional within while iterator
        smallest = list_of_nums[i]          # changes value of output to the new value under condition that it is < previous/current value
      end
    i += 1                                  # increase i by 1 to repeat conditional for next value in array
  end                                       # ends once i = array.length because array[5] doesnt exist in an array of length 5 such as [1,3,5,7,9]
  return smallest                           # returns the desired output (smallest value in the array)
end

# if list_of_nums.length == 0
#     return nil
#   else
#     return smallest
#   end

# Don't use == when assigning varible values!!

#REFACTORING: Ruby built-in methods from Stack Overflow: (http://stackoverflow.com/questions/2967586/finding-the-highest-lowest-total-average-and-median-from-an-array-in-ruby)

  # lowest = arr.min
  # highest = arr.max
  # total = arr.inject(:+)
  # len = arr.length
  # average = total.to_f / len # to_f so we don't get an integer result
  # sorted = arr.sort
  # median = len % 2 == 1 ? sorted[len/2] : (sorted[len/2 - 1] + sorted[len/2]).to_f / 2