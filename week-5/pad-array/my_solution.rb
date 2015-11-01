# Pad an Array

# I worked on this challenge with Jessie Richardson

# I spent [2.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

    # What is the input?
    # an array of any size greater than or equal to zero

    # What is the output? (i.e. What should the code return?)
    # for pad!: output = if array length is greater than or equal to the minimum size, then the original array is outputted. If array is
    # less than the minimum size, then the output will be an array with all of the contents of the original array plus padding to make the
    # array longer.
    # for pad: output = Same as above but a new array will be outputted and original array still exists.

    # What are the steps needed to solve the problem?

    # PSEUDOCODE FOR "pad!":
    # 1) define a method called pad!
    # 2) IF minimum size is less than or equal to the length of "array", return "array"
    # 3) If minimum size is greater than the length of "array", "array" needs to be padded with x number of elements (where x = min_size -
    # array length) whose value is equal to "value" (nil).

    # PSEUDOCODE FOR "pad" :
    # 1) define a method called "pad"
    # 2) IF minimum size is less than or equal to the length of "array", return "array"
    # 3) If minimum size is greater than the length of "array", a copy of "array" is created and then padded with x number of elements (
    # where x = min_size - array length) whose value is equal to "value" (nil).

    #EXAMPLE: array = [1,2,3,4],  min_size = 6


# 1. Initial Solution
    def pad!(array, min_size, value = nil) #destructive
      if min_size <= array.length
        return array
      else
        until array.length == min_size
          array << value
        end
        array
      end
    end
    # pad!([1,2,3],5,nil)

    def pad(array, min_size, value = nil) #non-destructive
      new_array = [] + array                  # The Magical Syntax!
      if min_size <= new_array.length
        return new_array
      else
        until new_array.length == min_size
          new_array = new_array.push(value)
        end
          p new_array
        # p array
      end
    end
    # pad([1, 2, 3, 4, 5, 6],8)

# 3. Refactored Solution



# 4. Reflection
     # 1) Were you successful in breaking the problem down into small steps?

     # 2) Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you
     #    have?

     # 3) Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you
     #    encountered and what did you do to resolve them?

     # 4) When you refactored, did you find any existing methods in Ruby to clean up your code?

     # 5) How readable is your solution? Did you and your pair choose descriptive variable names?

     # 6) What is the difference between destructive and non-destructive methods in your own words?

