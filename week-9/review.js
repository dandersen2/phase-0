// Translate Ruby to JavaScript (9.2.2)
// Grocery list program translation:
// I worked on this assignment by myself
// This assignment took me 2 hours

// Pseudocode
// 1. First make a function that initiates your GroceryList as a function
// 2. Define a function that will add an item to GroceryList, given the list name, an item, and a quantity
// 3. Define a function that will remove an item from the GroceryList, given the list name, and an item on that list
// 4. Define a function that will change the quantity for a an item already on the list, given the list name, the item, and the new quantity
// 5. Create a function to print out your list in a way that is visually understandable to a user eg: "Remember to buy 12 eggs".

// Initial Solution:
var GroceryList = function(listName) {
  this.listName = listName;
  this.items = Object.create;
}
GroceryList.prototype.addItem = function(item, quantity) {this.items[item] = quantity}
GroceryList.prototype.removeItem = function(item) {delete this.items[item]}
GroceryList.prototype.updateItem = function(item, quantity) {
  if (this.items[item]) {this.items[item] = quantity}
}
GroceryList.prototype.printList = function() {
  console.log(this.listName);
  for (var item in this.items) {
    console.log("Buy " + this.items[item].toString() + " " + item);
  }
}

var groceries = new GroceryList("Grocery List");
groceries.addItem("milk", 3);
groceries.addItem("eggs", 24);
groceries.addItem("bananas", 10);
groceries.addItem("steaks", 4);
groceries.addItem("potatoes", 1);
groceries.updateItem("eggs", 12);
groceries.removeItem("milk");
groceries.printList();


// Reflections:
// QUESTION: What concepts did you solidify in working on this challenge?
// (reviewing the passing of information, objects, constructors
//   , etc.)
//   Answer: In this assignment, I was able to refresh myself on the
//   use of constructor functions and manipulating data structures
//   in JS. I was also able to figure out how to use the prototype
//   command, which I don't fully understand but I now have a basic
//   idea of how to use it.

// QUESTION: What was the most difficult part of this challenge?
//   Answer: I needed to review quite a bit to get the constructor
//   functions to work with the prototype command.

// QUESTION: Did an array or object make more sense to use and why?
//   Answer: Using an object seems easier to use in this particular
//   example in JS because it seems easier to make changes to the object
//   than it is to make changes to an array in JS. ALthough I think
//   both could work, but would change the structure of the code
//   significantly if I were to use an array.
