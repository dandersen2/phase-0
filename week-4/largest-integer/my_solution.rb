# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  i = 0
  largest = list_of_nums[0]
  while i < list_of_nums.length
    if list_of_nums[i] > largest
      largest = list_of_nums[i]
    end
  i +=1
  end
  return largest
end

# Used skeleton from smallest_integer because thay basically do the exact same thing except this one uses >



# def smallest_integer(list_of_nums)
#   i = 0                                     # i works as index for the array: array[2] of [1,3,5,7,9] is 5 b/c index starts at 0
#   smallest = list_of_nums[0]                # defines the output variable and sets it to the first valu in array before starting iterator
#   while i < list_of_nums.length             # sets loop to go through all values in array including last one, but will stop once i = length
#       if list_of_nums[i] < smallest         # conditional within while iterator
#         smallest = list_of_nums[i]          # changes value of output to the new value under condition that it is < previous/current value
#       end
#     i += 1                                  # increase i by 1 to repeat conditional for next value in array
#   end                                       # ends once i = array.length because array[5] doesnt exist in an array of length 5 such as [1,3,5,7,9]
#   return smallest                           # returns the desired output (smallest value in the array)
# end