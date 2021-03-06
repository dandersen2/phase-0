/*
Gradebook from Names and Scores
I worked on this challenge with Carolina Medellin
This challenge took me 4 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.

// var students = ["Joseph", "Susan", "William", "Elizabeth"]

// var scores = [ [80, 70, 70, 100], // Joseph's scores
//               [85, 80, 90, 90], // Susan's scores
//               [75, 70, 80, 75], // William's scores
//               [100, 90, 95, 85] ] // Elizabeth's scores

// var average = function(integers){
//   integers = integers.reduce((a, b) => a + b)/(integers.length);
//   return integers;
// };

// var gradebook = {
//   Joseph: {
//     testScores: scores[0]
//   },
//   Susan: {
//     testScores: scores[1]
//   },
//   William: {
//     testScores: scores[2]
//   },
//   Elizabeth: {
//     testScores: scores[3]
//   },
//   addScore: function(name, score){
//     this.name = name
//     this.score = score
//     gradebook[name].testScores.push(score);
//   },
//   getAverage: function(name){
//     this.name = name
//     return average(gradebook[name].testScores);
//   }
// };


// __________________________________________
// Refactored Solution

var average = function(integers){
  var mean = integers.reduce((a, b) => a + b)/(integers.length);
  return mean;
};

var gradebook = {

  getScores: function(student_name){
    // returns a student's scores
    return this[student_name].testScores;
    },

  //loop (length of students array) times and each time add a new property with the student’s name as the key and the value being another object with testScores as the key and an array of ints as its value

  setScores: function(students_array, scores_array) {
    for (var i = 0; i < students_array.length; i++) {
      this[students_array[i]] = {testScores: scores_array[i]};
    }
  },

  addScore: function(name, score){
    this.name = name
    this.score = score
    this[name].testScores.push(score);
  },

  getAverage: function(name){
    return average(gradebook.getScores(name));
  }
};

// create the student objects
gradebook.setScores(students, scores);
console.log("gradebook contains: ");
console.log(gradebook);

// get Joseph's scores
console.log("Joseph's scores: " + gradebook.getScores("Joseph"));

// get Joseph's average
console.log("Joseph's average: " + gradebook.getAverage("Joseph"));

// console.log(students)
// console.log(scores)
// console.log(gradebook.students[0])
// console.log(gradebook.students[1])
// console.log(gradebook.students[2])
// console.log(gradebook.students[3])
// console.log(gradebook.getScore(students, scores))
// console.log(gradebook.getAverage("Joseph"));
// console.log(gradebook.getAverage("Susan"));
// console.log(gradebook.getAverage("William"));
// console.log(gradebook.getAverage("Elizabeth"));

// [name] in brackets takes the value of nmae, not a variable named "name"

// (gradebook.getAverage("Joseph") === 80),

// average([1,2,3]);

 // gradebook.addScore("Susan", 80);
 // would push the score 80 into the value of gradebook.Susan.testScores.

// __________________________________________
// Reflect

/*
QUESTION: What did you learn about adding functions to objects?
  Answer:  I learned how to add a function as a property of an object.
  These function properties can also call upon other functions within
  the object and from outside of it like in the case of calling the
  average function, which is a var that is declared outside of the
  gradebook object.


QUESTION: How did you iterate over nested arrays in JavaScript?
  Answer:  We used a for loop to iterate through the students array.
  By creating an index var i, and incrementing i by one with each
  iteration, we were able to set the students scores in setScores
  using the data from the two input arrays.



QUESTION: Were there any new methods you were able to incorporate?
If so, what were they and how did they work?
  Answer:  I found the .reduce method to be an easy way to
  calculate an average from an array of numbers. By using
  integers.reduce((a, b) => a + b)/(integers.length);  we were
  able to calculate the sum across the array and then divide by
  the length to calculate the mean.

*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)