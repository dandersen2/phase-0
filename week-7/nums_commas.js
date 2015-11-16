// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Pete Wood.
// We worked on this assignment for 2.5 hours

// Pseudocode
// 1) Create a function called separateComma with an input of an integer
// 2) Convert the integer to a string "number"
// 3) ITERATE through the string
//      pass the values in reverse order to a new string called "reversed"
// 4) ITERATE through "reversed"
//      push each value to new string "reversedComma"
//      IF current iteration does not equal the length of the string,
//        every fourth iteration, insert a comma (",")
// 5) Reverse "reversedComma" to a new string called "finalNumber"
// 6) Return finalNumber


// Initial Solution

/*
var startNumber = 1234567890;

function separateComma(integerInput) {
  return integerInput.toString();
}

function reverseArray(stringIn){
    return stringIn.split("").reverse();
}

var reversed = reverseArray(separateComma(startNumber));
var reversedComma = reversed;
// console.log( startNumber.toString() );

for ( var i = 3; i < reversed.length; i += 4 ) {
    reversedComma.splice(i, 0, ",");
}
// console.log( reversedComma );

var finalNumber = reversedComma.reverse().join("");
console.log( "This is the final number: " + finalNumber );
*/

// RANDOM NOTES:
// join("");
// toString returns a string separated by commas!
// arr.splice(index, 0, item);
// reversedComma concat reversed[i]
// if i % 4 == 0

// Refactored Solution

function separateComma( integerIn )
{
  var reversedComma = integerIn.toString().split("").reverse();
  for ( var i = 3; i < reversedComma.length; i += 4 )
  {
    reversedComma.splice(i, 0, ",");
  }
  return reversedComma.reverse().join("");
}

console.log( separateComma( 1234567890 ) );
console.log( separateComma( 123456789 ) );
console.log( separateComma( 12345678 ) );
console.log( separateComma( 4192482489027 ) );


// Your Own Tests (OPTIONAL)




// Reflection

// QUESTION: What was it like to approach the problem from the perspective
// of JavaScript? Did you approach the problem differently?
//   ANSWER: It was interesting to pseudocode with the goal of coding in
//   another language in mind because I noticed which words and concepts
//   still apply sort of universally to both Ruby and Javascript but are
//   still specific enough to be helpful. I approached the problem in the
//   same general way though, creating functions instead of methods, making
//   local variables, and iterating over data structures.

// QUESTION: What did you learn about iterating over arrays in JavaScript?
//   ANSWER: I found that the for loop is very efficient and easy to
//   setup and use compared to incrementing while or until loops in
//   Ruby. Also many of the methods seem to be the same or very similar
//   to Ruby such as .split, .reverse, and .join.

// QUESTION: What was different about solving this problem in JavaScript?
//   ANSWER: The syntax for js was the part that seemed the most different
//   from Ruby, such as using the {} brackes for the loop like we would
//   for a block in Ruby, ending each statement with a semicolon ;, and
//     using console.log() with the function as an argument were some
//   slight differences. Buidling a function was ver similar to creating
//   methods in Ruby, so the overal structure was familiar.

// QUESTION: What built-in methods did you find to incorporate in your
// refactored solution?
//   ANSWER: We used. split to separate a string into an array, .reverse
//   to reverse the order of the array, and .join to put the array back
//   together into a single string. We also used the .splice to insert
//   the commawhere it was needed. this was similar to inject in Ruby.
