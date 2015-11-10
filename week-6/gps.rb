# Your Names
# 1) Dan Andersen
# 2) Tal Schwartz

# I spent 2.5 hours on this challenge.

# Bakery Serving Size portion calculator.
# ORIGINAL BAD CODE:
# def serving_size_calc(item_to_make, order_quantity)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   serving_size = library.values_at(item_to_make)[0]
#   serving_size_mod = order_quantity % serving_size

#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


# Things to refactor:
# 1) Error handling is confusing (move error counter to error section of code)
#    - initialize error_couter at 0 and count up
#    - return error as the error arise instead of creating an error counter
# 2) See in-line comments
# Bakery Serving Size portion calculator.

# defines our method, arguments, and starting values for our local variables

def serving_size_calc(item_to_make, order_quantity)
  recipes = {"cookie" => 1, "cake" =>  5, "pie" => 7}

# Iterates through "library" hash and evaluates whether or not the item to make is in the library
# AKA Validates the input
#   error_counter = 3
#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end
#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

  if recipes[item_to_make] == nil
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  # Creates variable "serving_size" with number of servings to make for the given "item_to_make"
  #   serving_size = library.values_at(item_to_make)[0]
  needed_ingredients = recipes[item_to_make]
  # Calculates the leftovers based on the order size and the serving size
  leftover_ingredients = order_quantity % needed_ingredients

  # Specifies a particular condition where "if serving_size_mod = 0" do the following...
#   case serving_size_mod
#   when 0
#     # returns number of servings that can be made with any given item and whether or not you will have leftovers (if so, how many)
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end

  suggested_item = leftover_ingredients / recipes["cookie"]

  if leftover_ingredients == 0
    "Calculations complete: Make #{order_quantity/needed_ingredients} of #{item_to_make}"
  else
    "Calculations complete: Make #{order_quantity/needed_ingredients} of #{item_to_make}, you have #{leftover_ingredients} leftover ingredients. Suggested baking items: #{suggested_item} of cookies"
  end


end

# p serving_size_calc("pie", 7)
 p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)
#


#  Reflection

# What did you learn about making code readable by working on this challenge?
#      ANSWER: The original code that we were given was very difficult
#      to read and understand. The use of a double negative in the error
#      counter method was the firs thing I spotted as being overly
#      confusing but after a while of working on it we realized that
#      we didnt really need the counter at all and made the whole
#      program run smoother by simply removing it.

# Did you learn any new methods? What did you learn about them?
#      ANSWER: I had not used the values_at method or the case/when
#       conditional statement yet. A case statement is similar to an
#       if/elsif statement but is more suited for several different
#       outcomes for the same variable. The values_at method can be
#       used to retrieve the values for a set of keys within a hash.
#       It returns the values into an array. I can only find this
#       method in Ruby docs 1.9.3 though so I'm not sure if it is
#       still good practice to use it.

# What did you learn about accessing data in hashes?
#      ANSWER: Using the hash_name[key_name] syntax seems to be the
#      best way to access a specific value within a hash by calling
#      the key that it is associated with. You can also iterate
#      through hashes using .each in the same way it is used for arrays.

# What concepts were solidified when working through this challenge?
#      ANSWER: Accessing values within hashes and arrays as well as
#      iterating through hashes and arrays. I also got some good
#      practice at interpreting someone elses code and trying to
#      refactor badly written code.

