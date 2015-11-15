// JavaScript Olympics

// I paired with Parminder Singh on this challenge.

// This challenge took me 2 hours.


// Warm Up




// Bulk Up




// Jumble your words




// 2,4,6,8




// "We built this city"




// Reflection

// ATHLETE: Release 1:
// var Athlete = {name: "Sarah", event: "Singles"};


// function win(object) {
//   return object.name + " won the " + object.event + "!"
// }


// console.log(win(Athlete));


// REVERSE STRING: RELEASE 2:
// function reverseString (string)
// {return string.split('').reverse().join('');}


//   console.log(reverseString("Hello"));





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