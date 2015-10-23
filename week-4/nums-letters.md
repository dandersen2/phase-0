####What does puts do?
  "puts" returns nil and prints the output to the console with a new line. "p" will return the evaluated code AND print to the console, while "print" returns nil and prints the output to the console.

####What is an integer? What is a float?
  An integer is a whole number such as 1, -5, or 63. They cannot have decimal places and are only multiples of 1. Float is used to store "floating point" values, or values that have potential decimal places.

####What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  When you divide integers, the computer rounds to the nearest whole number, which is not always the exact answer. if you divide 9 by 2 for example, using integers, the correct answer is 4.5 but that is not an integer so the computer will round down to 4. In the case that the result is a decimal, the computer will always round down to the next closest integer. If you divide 9.0 by 2.0 using float however, the result can be a decimal, so the correct answer of 4.5 is returned.

irb(main):005:0> 365*24
=> 8760