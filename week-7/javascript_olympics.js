// JavaScript Olympics

// I paired with Parminder Singh on this challenge.

// This challenge took me 2 hours.


// Warm Up
// "I'm Not sure what is supposed to go here. Releases 1-4 below.""


//______________________________________________________
// Bulk Up:

// ATHLETE: Release 1:
// var Athlete = {name: "Sarah", event: "Singles"};


// function win(object) {
//   return object.name + " won the " + object.event + "!"
// }


// console.log(win(Athlete));


//_____________________________________________________
// Jumble your words:

// REVERSE STRING: RELEASE 2:
// function reverseString (string)
// {return string.split('').reverse().join('');}


//   console.log(reverseString("Hello"));


//__________________________________________________
// 2,4,6,8
// EVENS: RELEASE 3
// var evens = [];

// function evenNumbers(array) {

//   var i = 0;
//   for (i = 0; i < array.length; i++) {
//     if (array[i] % 2 == 0)
//       evens.push(array[i])
//   }
//   return evens;
// }

// console.log(evenNumbers([2,4,1,6,9,7]));


//______________________________________________________
// "We built this city"
// RELEASE 4:

function Athlete(name, age, sport, quote){
  this.name = name
  this.age = age
  this.sport = sport
  this.quote = quote

};


//Driver Code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


//________________________________________________________
// Reflection

// QUESTION: What JavaScript knowledge did you solidify in this challenge?
//   ANSWER: I solidified my proficiency with the basic syntax used in js
// vs. that of Ruby. We also needed to learn some new skills such as the
// constructor function and the use of "this." as well as splitting, reversing,
// joining methods, and logging to the console. These are all things we had
// previously done in Ruby but are slightly different in js.

// QUESTION: What are constructor functions?
//   ANSWER:  A constructor function is a way of creating an object other
//   than with the object literal notation. They use the keyword "this."
//   to declare property names and values. eg: this.eyeColor = "Blue" instead
//   of Dan { eyeColor : "Blue"} when referring to the object "Dan"

// QUESTION: How are constructors different from Ruby classes (in your
//   research)?
//   ANSWER: They are similar in the way that they ar instantiated using
//   the .new syntax but they differ from the behavior of Ruby classes
//   because they do not inherit the properties of the "class" when they
//   are created.








