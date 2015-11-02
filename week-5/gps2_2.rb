# Create a new list that can hold items and quantities
#http://ruby-doc.org/core-1.9.3/Hash.html

# Release 1

# CREATE METHOD create_list: Create an empty list
# Input: Not applicable yet
# Output: Returns an empty hash

# CREATE METHOD add_item: Add an item to the list
# Input: An item and a quantity of that item
# Output: Returns hash with a key and its value

# CREATE METHOD remove_item: Remove an item from the list
# Input: The item that is selected to be removed from the hash
# Output: Returns the list without the item that we wanted removed

# CREATE METHOD update_quantity: Take one item and change its quantity value
# Input: Which item is to be changed and the new value
# Output: List with new value for the selected item

# CREATE METHOD print_list: Returns entire list to be viewed or printed
# Input: The entire final version of the list
# Output: List in console or physical version of the list

# Release 2

def create_list
  {}
end

def add_item(list, food, quantity)  #OMG OMG OMG OMG!!!!!!!
  list[food] = quantity
end

# create_list[food] = quantity sets "quantity" as the value for the "food" key
# list = create_list
# add_item(list, "apple", 9)
# add_item(list, "potato", 12)
# p list

def remove_item(list, food)
  list.delete(food)
end

# list = create_list
# add_item(list, "apple", 9)
# add_item(list, "potato", 12)
# add_item(list, "banana", 45)
# remove_item(list, "potato")
# p list


# list = create_list this makes it that list is never started over. It's importante that this is outside the method
#  h.delete("a")  ---> deletes a particular key/value pair from a hash

def change_quantity(list, food, quantity)
  list[food] = quantity
end

# h.each {|key, value| puts "#{key} is #{value}" }

list = create_list
add_item(list, "apple", 9)
add_item(list, "potato", 12)
add_item(list, "banana", 45)
remove_item(list, "potato")
change_quantity(list, "banana", 22)

#Methods apparently cannot be named "print" b/c it is a built-in method in ruby?!

def print_list (list)
  puts " "
  puts "On your list!"
  list.each do | food, quantity|
    puts "You need to buy #{quantity}: #{food}"
    puts"-----------------------------"
  end
end
print_list(list)

Reflections:

  What did you learn about pseudocode from working on this challenge?
    Pseudocode is important for guiding your thinking process once you reach the actual code part of the problem you are working on.

  What are the tradeoffs of using Arrays and Hashes for this challenge?

  What does a method return?

  What kind of things can you pass into methods as arguments?

  How can you pass information between methods?

  What concepts were solidified in this challenge, and what concepts are still confusing?


