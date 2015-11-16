// Eloquent JavaScript

// Run this file in your terminal using `node eloquent.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var name = "Dan Andersen"
console.log("My name is " + name)

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// FizzBuzz Printer

var toPrint = "";
var i;
for (i = 1; i <= 100; i = i + 1) {
    if ((i % 3 === 0) && (i % 5 === 0)) {
        toPrint += "FizzBuzz" + "\n";
    }
    else if (i % 3 === 0) {
        toPrint += "Fizz" + "\n";
    }
    else if (i % 5 === 0) {
        toPrint += "Buzz" + "\n";
    }
    else {
        toPrint += i + "\n";
    }
}

console.log(toPrint)

// Functions

var favoriteFood = String(prompt("What is your favorite food?", ""));
  alert("Hey! That's my favorite too!");

// Complete the `minimum` exercise.

// function minimum(x, y) {
//     if (x < y)
//       return x;
//     else
//       return y;
// }

// console.log(minimum(10, 8));

// OR

function minimum(x,y) {return x<y ? x : y}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {name: "Dan Andersen", age: 31, favorite_foods: ["Hamburgers", "Fettucine", "Pancakes"], quirk: "I\'m left-handed but right-armed and right-footed."}

console.log(me)

// __________________________________________________________________________

// ANSWERS TO "READ AND RESPOND" QUESTIONS:
//
/*
Release 1: Read and Respond
Read the following sections. Answer the questions in the text submission box. For questions that ask you to complete an exercise or write code, put that into the eloquent.js file.

Introduction
Did you learn anything new about JavaScript or programming in general?
  I learned that Javascript is one of the most liberal programming languages as far as what it allows. This makes it a little bit easier for you to create a program that will run, but makes it harder to debug problems because it won't always point out if something is incorrect like in Ruby because it is not prohibited.

Are there any concepts you feel uncomfortable with?
  I already know that there are some code elements that I don't quite understand yet, but nothing particular from this chapter that i feel uncomfortable with.

Ch. 1: Values, Types, and Operators (Links to an external site.)
Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
  Most of the math operators that I read about seem to function the same way in js as they do in Ruby. The special characters NaN (not a number) and positive and negative infinity are new and I don't think exist in Ruby. To print to the console, in js you use the console.log() command instead of the p, print, and puts from Ruby. We also did not encounter the === in Ruby which means "precisely equal to" in js. typeof is another useful method for finding any values data type in js.


Ch. 2: Program Structure (Links to an external site.)
What is an expression?
  An expression is any fragment of code that produces a value

What is the purpose of semicolons in JavaScript? Are they always required?
  An expression that has a semicolon after it is called a "statement". Any time that you want to end a statement in order to begin a new one, you must end the line with a ";" except for special cases.

What causes a variable to return undefined?
  If you ask for the value of an empty variable it will return "undefined" because there is no value to retrieve yet.

Write your own variable and do something to it in the eloquent.js file.
  (See eloquent.js)

What does console.log do and when would you use it? What Ruby method(s) is this similar to?
  console.log() is the equivalent of the puts command in Ruby as it outputs the result to the console or literally retrieves the log property from the value haled by the console variable.

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

  var favoriteFood = String(prompt("What is your favorite food?", ""));
  alert("Hey! That's my favorite too!");

Describe while and for loops
  While and for loops are ways of "looping" in order to repeat a process however many times that you need it done without writing out separate code for each repetition. It works the same way as the while, until, and unless loops in Ruby. For loops allow you to easily set conditions for where you want the computer to start performing a process, where you want it to end, and how you want it to increment each time, on a single line of concise code.

What other similarities or differences between Ruby and JavaScript did you notice in this section?
  The general structure of functions is very similar to that of methods in Ruby as well as the arguments an parameters that these pieces of code accept. Other built in methods such as .length and others are also available in js. Switch and case statements are similar to that of Ruby and if, else, and elsif conditional statements and incrementing numbers or variables with += are also the same. A couple important differences are the naming conventions using camelCase as opposed to under_scores, and ending each statement with a semi-colon.

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
  see eloquent.js

Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)
What are the differences between local and global variables in JavaScript?
  Local variables are variables that have been declared within a function using "var" followed by the name of the variable. All other variables that are declared outside of a function are global variables.

When should you use functions?
  Functions are similar to methods in Ruby. They allow for a certain set of processes or calculations to be encapsulated within a single function call, so that that process can be easily repeated using different inputs or arguments. A function can also be called within another function to simplify the structure of your code. If there are a lot of discreet steps that must be performed by a program, each one can be given a separate function and then one master function can call all of the sub functions in order. This also allows a programmer to break down problems into smaller pieces which are easier to create and test and debug.

What is a function declaration?
  a function declaration can be used to define a variable that points to a given function without having to declare it as a variable first. e.g.:function square() { return x*x; } rather than var square = function() {return x*x;}

Complete the minimum exercise in the eloquent.js file.
    see eloquent.js

Ch. 4: Data Structures: Objects and Arrays (Links to an external site.)
Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.
What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
  Both syntaxes will run the same way, but the dot format can only be used if the property has a proper name that obeys the rules for naming variables. If the name of the property begins with a number or contains mulitple words with a space, the bracket format can be used.

Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
  See eloquent.js

What is a JavaScript object with a name and value property similar to in Ruby?
  All objects in js are collections of properties with values. These are similar to hashes in Ruby that have key/value pairs.


*/



