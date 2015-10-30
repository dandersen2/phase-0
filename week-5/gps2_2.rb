#Create a new list that
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

list = Hash.new

def return_list(list)
   # All classes are capitalized by convention in Ruby.
  return list
end

def add_item(item, quantity)
  list = {item.to_s => quantity}
  return list
end

def remove_item(item)
  list.delete(item)
  return list
end

def update_quantity(item, quantity)
  #if #item exists
    list = {:item => quantity}
  return list
  #else#give a warning
    puts "you need to add the item first"
  #end
end

def print_list(list)
  list.each{|item, quantity| puts "Buy #{quantity} #{item} " }
end

# Release 3
p return_list #== {} # Try turning into tests if it is helpful. Else you can just p the value to see that it is what you intended it to be.
p add_item("lemonade",2)
#p add_item("tomatoe",3)
# p add_item("lemonade",2)
# p add_item("lemonade",2)
# remove

# "Jane Doe" => 10, "Jim Doe" => 6


# Release 4
