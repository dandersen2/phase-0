####What does puts do?
  "puts" returns nil and prints the output to the console with a new line. "p"
  will return the evaluated code AND print to the console, while "print"
  returns nil and prints the output to the console. Otherwise, Ruby will
  automatically return the last line of code evaluated.

####What is an integer? What is a float?
  An integer is a whole number such as 1, -5, or 63. They cannot have decimal
  places and are only multiples of 1. Float is used to store "floating point"
  values, or values that have potential decimal places.

####What is the difference between float and integer division? How would you
explain the difference to someone who doesn't know anything about programming?
  When you divide integers, the computer rounds to the nearest whole number,
  which is not always the exact answer. if you divide 9 by 2 for example,
  using integers, the correct answer is 4.5 but that is not an integer so the
  computer will round down to 4. In the case that the result is a decimal, the
  computer will always round down to the next closest integer. If you divide 9.
  0 by 2.0 using float however, the result can be a decimal, so the correct
  answer of 4.5 is returned.

Hours in a year calculated in Ruby (IRB in terminal):
  irb(main):005:0> 365*24
  => 8760

  ````ruby
  365*24
  ````

Minutes in a decade calculated in Ruby:
  irb(main):001:0> 60*24*365*10
  => 5256000

  ````ruby
  60*24*365*10
  ````

####4.2 Numbers, Letters, and Variable Assignment (medium) "my_solution.rb" files:

##Link to 4.2.1 Definining Variables file on GitHub:

 [Defining Variable](https://github.com/dandersen2/phase-0/blob/master/week-4/defining-variables.rb)


##Link to 4.2.2 Simple String file on GitHub:

 [Simple String](https://github.com/dandersen2/phase-0/blob/master/week-4/simple-string.rb)


##Link to 4.2.3 Local Variables and Basic Arithmetical Expressions:

 [Basic Math](https://github.com/dandersen2/phase-0/blob/master/week-4/basic-math.rb)


####How does Ruby handle addition, subtraction, multiplication, and division of numbers?

    ANSWER: Ruby handles the masic arithmetic functions just like a calculator would, using + for addition, - for subtraction, * for multiplication, and / for division.

####What is the difference between integers and floats?

    ANSWER: Numbers in Ruby can be handled as integers of "floating-point" numbers, also called floats. Integers are numbers without decimal points while floats are numbers that DO have decimal points.

####What is the difference between integer and float division?

    ANSWER: When calculating a quotient of two integers, the answer will also be an integer, even if the dividend is not cleanly divided by the divisor. In this case the computer will round down to the nearest integer value. For example, 7 / 2 in Ruby will evaluate to 3 if integers are used but will evaluate to 3.5 if floats are used.

####What are strings? Why and when would you use them?

    ANSWER: Strings are groups of letters, digits, punctuation, symbols, or spaces. "Hello", "2,354", and "Do Not Enter!" are all examples of strings. These are useful for displaying text or messages in a program, but can also be acted upon by the mathematical operators in certain situations.

####What are local variables? Why and when would you use them?

    ANSWER: Local Variables are variables that only exist within a given program. Their values can vary by changing what they refer to, which is why they are called variables. By assigning a value to a variable, you can save time and reduce repetition in your code so you dont have to retype long messages or values.

####How was this challenge? Did you get a good review of some of the basics?

    ANSWER: Yes, this was a helpful review of the basic Ruby concepts I encountered in the codecademy course.
