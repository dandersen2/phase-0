# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  i = 0
  shortest = list_of_words[0]
  while i < list_of_words.length
    if list_of_words[i].length < shortest.length
      shortest = list_of_words[i]
    end
  i += 1
  end
  return shortest
end


# def smallest_integer(list_of_nums)
#   i = 0
#   smallest = list_of_nums[0]
#   while i < list_of_nums.length
#       if list_of_nums[i] < smallest
#         smallest = list_of_nums[i]
#       end
#     i += 1
#   end
#   return smallest
# end