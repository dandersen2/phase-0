# RELEASE 2: NESTED STRUCTURE GOLF

# I worked on this assignment with Walter Kerr
# I spent about 1.5 hours on this assignment

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:2
# ============================================================

# p array[1][2][0]
p array[1][1][2][0]

# # ============================================================

# # Hole 2
# # Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

p hash [:outer][:inner]["almost"][3]

# # attempts:1
# # ============================================================



# # ============================================================


# # Hole 3
# # Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

p nested_data [:array] [1] [:hash]

# # attempts:1
# # ============================================================



# # ============================================================

# # RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# # puts number_array.each {|element| element + 5}
# number_array.each do |element|
#     if element.kind_of?(Array)
#       element.each {|inner| p (inner + 5)}
#     else
#      p (element + 5)
#    end
# end

# p number_array.flatten.map { |element| element + 5}

# nested_array.each do |element|
#   if element.kind_of?(Array)
#     element.each {|inner| p inner}
#   end
# end

# # Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

p startup_names.flatten.map { |element| element + "ly"}
# This was by far the simplest way we could find of doing this. Some combination of our
# method on lines 63-67 would also work with the strings.

# attempts: 1

# REFLECTIONS:

# QUESTION: What are some general rules you can apply to nested arrays?
#     ANSWER: the rules that govern arrays and hashes can be applied in the same way to nested
#     arrays that they are applied to one-dimensional arrays. If you want to iterate through
#     all elements and sub-elements of an array, you can either flatten the outermost array and
#     work with the elements individually or you can iterate through the aouter array followed
#     by any sub-arrays followed by any sub-sub-arrays, and so on until you reach the inner-most
#     level. Using the kind_of? or is_a? (Array) methods allows the interpreter to tell if a sub
#     element is another array or just a value so that it can decide whether to iterate through it.


# QUESTION: What are some ways you can iterate over nested arrays?
#     ANSWER: See Question 1


# QUESTION: Did you find any good new methods to implement or did you re-use one you were
# already familiar with? What was it and why did you decide that was a good option?
#     ANSWER: the .each iterator is very useful in these cases as well as .map because they
#     both are array methods. the kind_of? and is_a? methods were good for determining the
#     data type of sub-arrays. The .flatten method is also useful on arrays to make iterating
#     over them less complex.


