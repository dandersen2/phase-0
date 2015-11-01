# Calculate the mode Pairing Challenge

# I worked on this challenge Amaar Fazlani

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

#Input:
#Array of numbers and strings
#Output:
#Array of the most frequent values in the array that was input
# STEP 1: Go through each element of the array and count how many instances of
# that element there are in the array
# STEP 2: Create hash of with key as the number or string from input array and
# value as the number of instances of that key.
# Example hash created from step 2 mode([1,2,3,3]) => {1=>1, 2 =>1, 3=>2}
# STEP 3: Iterate over hash and determine which key has greatest value and
# return that key in an array
# STEP 4: IF two or more keys from the hash have the same most frequent value,
# your output array will contain all of them.
# Example:  mode[2,3,4,4,4,2,2] => [4,2]


# 1. Initial Solution


# def mode(array)
#   frequency_hash = Hash.new(0)
#   i = 0
#   while i < array.length
#     frequency_hash[array[i]] += 1        # This line inputs the value at
# array[i] into the "key" and increments the "value" by 1
#     i += 1
#   end
#   frequency_hash = frequency_hash.sort_by {|x,y| y}
#   output_array = []
#   frequency_hash.each{ |key, value|
#   if value == frequency_hash.last[-1]
#     output_array << key
#   end
#   }
#   p output_array.sort
# end




# mode([1,2,3,3,4,4])
# mode(["toy", "toy", "boat", "car", "car", "train"])



# 3. Refactored Solution


def mode(array)
  frequency_hash = Hash.new(0)
  array.each do |element|
    frequency_hash[element] += 1
  end
  frequency_hash = frequency_hash.sort_by {|x,y| y}
  output_array = []
  frequency_hash.each{ |key, value|
  if value == frequency_hash.last[-1]
    output_array << key
  end
  }
  p output_array.sort
end

# mode([1,2,3,3,4,4])
# mode(["toy", "toy", "boat", "car", "car", "train"])



# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?
  We decided to use a hash to store the data that we needed to gather about
  the input array as an intermediary step between the inputs and outputs of
  our mode method. The hash is perfect for this type of calculation because it
  allows for the key position to hold each element from the input array and
  the value position to act as a counter that will increment itself by 1 each
  time it encounters that same key.


Were you more successful breaking this problem down into implementable
pseudocode than the last with a pair?
  Breaking down the problem into discreet implementable steps was slightly
  easier now that we have had some practice and gotten used to the general
  format and syntax used in pseudocode. Translating our pseudocode back into
  actual code however, proved more difficult.


What issues/successes did you run into when translating your pseudocode to
code?
  When translating our pseudocode into code, we ran into several problems in
  making our steps function as desired within the coderpad interpreter. Most
  of these problems had to do with lacking the necessary syntax tools to make
  the method work. We did extensive research of the hash class methods within
  the Ruby docs and tested out several different strategies in attempting to
  create the counter for instances of each element in the input array.


What methods did you use to iterate through the content? Did you find any good
ones when you were refactoring? Were they difficult to implement?
  In our initial solution we used a while loop to iterate through each index (i
  ) of the input array, add the element at [i] to the key of the
  frequency_hash, and increments its value by 1. In order to extract the modes
  from the frequency hash we used an IF statement that goes through the sorted
  hash and takes all the "keys" that have "values" equal to the greatest value
  and pushes those keys into our output array. In our refactored solution we
  used an each iterator, which takes EACH element of the input array and
  places it as a key in the frequency hash and increments the value by 1. If
  it encounters a repeated element in the input array the key will be
  overwritten with itself and the value will be increased by 1 using a "+="
  operator. This second method seems slightly simpler and only uses 13 lines
  of code vs. 15 for the initial solution we had reached.


=end
