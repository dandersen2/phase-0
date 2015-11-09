#Attr Methods

# I worked on this challenge by myself

# I spent 3 hours on this challenge.

# Pseudocode

# Input: Name
# Output: A greeting defined by the "hello" method
# Steps:
# 1) Create two classes, NameData, and Greetings
# 2) use attr_reader on the name symbol
# 3) Initialize the two classes
# 4) Create greeting and use the reader in step 2 to access the data in @name using the .name method
# 5) Use driver code to call and test the classes.

# _______________________________________________

class NameData
  attr_reader :user_name
  attr_reader :computer_name

  def initialize(user_name, computer_name)
    @user_name = user_name
    @computer_name = computer_name
  end

end


class Greetings

  def initialize(user_name, computer_name)
    @namedata = NameData.new(user_name, computer_name)
  end

  def hello
    puts "Hello #{@namedata.user_name}, how wonderful to see you! My name is #{@namedata.computer_name}. What would you like to work on today?"
  end

end

greet = Greetings.new('Dan', 'Jarvis')
greet.hello

# _______________________________________________


# # Reflection

# Release #1:
# QUESTION: What are these methods doing?
#     ANSWER: Within the Profile class there are 8 methods used to set and then print the age,
#     name, and occupation for a given profile and then allow them to be changed. Initialize
#     sets the initial values for the instance variables of age, name, and occupation.
#     print_info simply puts the instance variables out to the console. the
#     "what_is_[instance_variable]" methods just retrieve the initial values for each instance
#     variable while the "change_my_[instance_variable]" methods can be called on those
#     instance variables to change their values EVEN OUTSIDE of the Profile class using an
#     argument "new_[value]" for age, name, and occupation.

# QUESTION: How are they modifying or returning the value of instance variables?
#     ANSWER: They use the "what_is_" methods to retrieve the current value of the instance
#     variable from the class, and the "change_my_" methods outside of the class on the new
#     instance_of_profile Profile class.

# Release #2:
# QUESTION: What changed between the last release and this release?
#     ANSWER: By adding the  attr_reader :age symbol accessor, we eliminate the need for the
#     what_is_age method. ".age" can now be called as a method instead and will access this
#     value.

# QUESTION: What was replaced?
#     ANSWER: The what_is_age method was replaced by the .age method which uses the attr_reader
#     accessor to access the value of the @age instance variable and return it when called on
#     the new Profile class using instance_of_profile.age (now equivalent to
#     instance_of_profile.what_is_age).

# QUESTION: Is this code simpler than the last?
#     ANSWER: Yes, it reduces the clitter in the code.

# Release #3:
# QUESTION: What changed between the last release and this release?
#     ANSWER: This time, we have added an attr_writer accessor, which will allow us to
#     change the value or "write" to the @age instance variable.

# QUESTION: What was replaced?
#     ANSWER: This new writer allows us to eliminate the change_my_age method and instead
#     simply call ".age" on instance_of_profile and set the new value to change it
#     (eg: instance_of_profile.age = 28, instead of instance_of_profile.change_my_age = 28)

# QUESTION: Is this code simpler than the last?
#     ANSWER: Yes, it replaces a 3 line method with a single attr_writer.

# Release #4: (See release_5.rb for cleanest, re-factored code)

# Release #5: (See my_solution.rb for the greeter method)

# Release #6: (Further Reflections)
# QUESTION: What is a reader method?
#     ANSWER: A reader method allows you to acces an instance variable from outside of
#     a class and return it, but not change it.

# QUESTION: What is a writer method?
#     ANSWER: A writer method allows you to acces an instance variable from outside
#     of a class and change it, but not read it or return it.

# QUESTION: What do the attr methods do for you?
#     ANSWER: Attr methods allow you to read, write, or read AND write class instance variables
#     from outside of the class, meaning they can be accessed within another class.

# QUESTION: Should you always use an accessor to cover your bases? Why or why not?
#     ANSWER: It is best to use the minimal accessor that will get the job done because you dont
#     want to accidentally be changing a variable that you only want to read as it might affect
#     the way other methods or classes function once it is changed. always using the accessor
#     method can also lead to difficulty debugging and compromised security if your data is
#     easily accessed.

# QUESTION: What is confusing to you about these methods?
#     ANSWER: These variables seem very useful and function the way I would expect them to.
#     I like when the variables that will be usedcan be laid it before the methods so that
#     it is easy to spot them later and follow the flow of the program.



