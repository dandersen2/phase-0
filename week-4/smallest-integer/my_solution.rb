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
  i = 0
  smallest = list_of_nums[0]
  while i < list_of_nums.length
      if list_of_nums[i] < smallest
        smallest = list_of_nums[i]
      end
    i += 1
  end
  return smallest
end

# if list_of_nums.length == 0
#     return nil
#   else
#     return smallest
#   end