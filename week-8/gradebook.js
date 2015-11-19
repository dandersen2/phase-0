/*
Gradebook from Names and Scores
I worked on this challenge with Carolina Medellin
This challenge took me [#] hours.
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

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100], // Joseph's scores
              [85, 80, 90, 90], // Susan's scores
              [75, 70, 80, 75], // William's scores
              [100, 90, 95, 85] ] // Elizabeth's scores

var average = function(integers){
  integers = integers.reduce((a, b) => a + b)/(integers.length);
  return integers;
};

var gradebook = {
  Joseph: {
    testScores: scores[0]
  },
  Susan: {
    testScores: scores[1]
  },
  William: {
    testScores: scores[2]
  },
  Elizabeth: {
    testScores: scores[3]
  },
  addScore: function(name, score){
    this.name = name
    this.score = score
    gradebook[name].testScores.push(score);
  },
  getAverage: function(name){
    this.name = name
    return average(gradebook[name].testScores);
  }
};


// __________________________________________
// Refactored Solution

for(var i =0; i < students.length; i++){
  gradebook.students[i]={testScores: scores[i],
                        addScore: function(name, score){
                          this.name = name
                          this.score = score
                          gradebook[name].testScores.push(score);
                        },
                        getAverage: function(name){
                          this.name = name
                          return average(gradebook[name].testScores);
  }





var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [81, 70, 70, 100], // Joseph's scores
              [83, 80, 90, 90], // Susan's scores
              [75, 70, 80, 75], // William's scores
              [100, 90, 95, 85] ] // Elizabeth's scores

var average = function(integers){
  integers = integers.reduce((a, b) => a + b)/(integers.length);
  return integers;
};

var gradebook = {

  getScore: function(){
    this.students = students
    this.scores = scores
    for (var i = 0; i < students.length; i++){
      students[i] = {testScores: scores[i][i]};
      return gradebook.students[i];
      return testScores;
    }
    // for (var i = 0; i < students.length; i++){
      // students[i]: {testScores: scores[i]}
      // Object.defineProperty(gradebook, students[i], {testScores: scores[i]})
      // gradebook.students[i] = {testScores: scores[i]}
      // return gradebook.students[i]
      // return testScores: scores[i];
    // }
  },
  addScore: function(name, score){
    this.name = name
    this.score = score
    gradebook[name].testScores.push(score);
  },
  getAverage: function(name){
    // this.students = students
    // this.scores = scores
    this.name = name
    return average(gradebook.getScore(students, scores).testScores);
  }
};

console.log(students)
console.log(scores)
// console.log(gradebook.students[0])
// console.log(gradebook.students[1])
// console.log(gradebook.students[2])
// console.log(gradebook.students[3])

console.log(gradebook.getAverage("Joseph"));
console.log(gradebook.getAverage("Susan"));
console.log(gradebook.getAverage("William"));
console.log(gradebook.getAverage("Elizabeth"));






// __________________________________________
// Reflect

QUESTION: What did you learn about adding functions to objects?
  Answer:  I

QUESTION: How did you iterate over nested arrays in JavaScript?
  Answer:  I

QUESTION: Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  Answer:  I









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