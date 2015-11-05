# RELEASE 2: NESTED STRUCTURE GOLF

# I worked on this assignment with Walter Kerr

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

# attempts: 1

REFLECTIONS:

What are some general rules you can apply to nested arrays?


What are some ways you can iterate over nested arrays?


Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?


