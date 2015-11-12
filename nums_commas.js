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