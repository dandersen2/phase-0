 // Design Basic Game Solo Challenge

// This is a solo challenge

// DISCLAIMER: I may have bitten off a little more than I could chew here.

// Your mission description: Create a bomberman mini-game
// Overall mission: Defeat your opponent by detonating them with a proximity bomb before they detonate you!
// Goals: Avoid your opponents bombs, blow up your rival
// Characters: BomberMan, Nemesis
// Objects: Bomberman(current position, health), BombermanBomb(location), Nemesis(current position, health), NemesisBomb(location)
// Functions: jump

// Pseudocode
//Declare a 'bomberman' object with properties of position and victory
//Add a 'jump' method to 'bomberman' to make him jump to a new location
//Declare a 'bombermanBombs' object with properties of locations and detonate
//Declare a 'nemesis' object with property of position
//Add a 'jump' method to 'nemesis' to make him jump to a new location
//Declare a 'nemesisBombs' object with properties of locations and detonate
// Use the jump function to move both players to new random locations on the board,
// Both bomberman and nemesis deploy bombs at each location they jump to,
// Check where the bomberman and nemesis are now located in relation to all bombermanBomb and nemesisBomb objects,
// If bomberman is on or directly adjacent to a NemesisBomb, he is detonated and victory property is set to "You lose!"
// If nemesis is on or directly adjacent to a bombermanBomb, he is detonated and victory property is set to "You Win!"
// Game ends only when victory property is set to one of these conditions


//

________________________________________________________________________________________
// Initial Code
var bombermanBombs = [];
var nemesisBombs = [];

var bomberman = {
posX: 0,
posY: 0,
victory: false,


move: function(jump) {
  // if(action === 'jump'){             "Not sure if I need to 'if' here or if it's unnecessary"
    bomberman.posX = Math.floor(Math.random() * (10) + 1);
    bomberman.posY = Math.floor(Math.random() * (10) + 1);
    bombermanBombs.push([bomberman.posX, bomberman.posY]);
    nemesis.posX = Math.floor(Math.random() * (10) + 1);
    nemesis.posY = Math.floor(Math.random() * (10) + 1);
    nemesisBombs.push([nemesis.posX, nemesis.posY])
    console.log("Bomberman position is " + bomberman.posX + "," + bomberman.posY);
    console.log("Nemesis' position is " + nemesis.posX + "," + nemesis.posY);

// var arrayLength = myStringArray.length;
for (var i = 0; i < nemesisBombs.length; i++) {
    if(bomberman.posX === nemesisBombs[i][0] && bomberman.posY === nemesisBombs[i][1]){
      console.log("You were detonated by Nemesis, Game Over!");
    }
    else {
      console.log("Phew! You survived another round!")
    }
}

for (var i = 0; i < bombermanBombs.length; i++) {
    if(nemesis.posX === bombermanBombs[i][0] && bomberman.posY === bombermanBombs[i][1]){
      bomberman.victory = true;
      console.log("You detonated your Nemesis, Sweet Victory!");
    }
    else {
      console.log("Your Nemesis survived this round.")
    }
}

}


player.move(jump);




________________________________________________________________________________________
// Refactored Code

var bombermanBombs = [];
var nemesisBombs = [];

var nemesis = {
        posX: 0,
        posY: 0,
}

var bomberman = {
        posX: 0,
        posY: 0,
        victory: false,


        move: function() {
            // if(action === 'jump'){             "Not sure if I need to 'if' here or if it's unnecessary"
            bomberman.posX = Math.floor(Math.random() * (10) + 1);
            bomberman.posY = Math.floor(Math.random() * (10) + 1);
            bombermanBombs.push([bomberman.posX, bomberman.posY]);
            nemesis.posX = Math.floor(Math.random() * (10) + 1);
            nemesis.posY = Math.floor(Math.random() * (10) + 1);
            nemesisBombs.push([nemesis.posX, nemesis.posY])
            console.log("Bomberman position is " + bomberman.posX + "," + bomberman.posY);
            console.log("Nemesis' position is " + nemesis.posX + "," + nemesis.posY);

            // var arrayLength = myStringArray.length;
            for (var i = 0; i < nemesisBombs.length; i++) {
                if (bomberman.posX === nemesisBombs[i][0] && bomberman.posY === nemesisBombs[i][1]) {
                    console.log("You were detonated by Nemesis, Game Over!");
                }
                else
                {
                    console.log("Phew! You survived another round!");
                }
            }

            for (var i = 0; i < bombermanBombs.length; i++) {
                if (nemesis.posX === bombermanBombs[i][0] && bomberman.posY === bombermanBombs[i][1])                 {
                    bomberman.victory = true;
                    console.log("You detonated your Nemesis, Sweet Victory!");
                }
                else
                {
                    console.log("Your Nemesis survived this round.");
                }
            }
          // Insert a tie condition here if you both get detonated!

        }
}


bomberman.move();
console.log(bombermanBombs);
console.log(nemesisBombs);

________________________________________________________________________________________

2nd Refactored code:

// var bombermanBombs = new Array();
var bombermanBombs = [];

// var nemesisBombs = new Array();
var nemesisBombs = [];


var nemesis = {
        posX: 0,
        posY: 0,
}

var bomberman = {
        posX: 0,
        posY: 0,
        victory: false,
        defeat: false,

        move: function() {
            bomberman.posX = Math.floor(Math.random() * (3) + 1);
            bomberman.posY = Math.floor(Math.random() * (3) + 1);
            // bombermanBombs.push([bomberman.posX, bomberman.posY]);
            nemesis.posX = Math.floor(Math.random() * (3) + 1);
            nemesis.posY = Math.floor(Math.random() * (3) + 1);
            // nemesisBombs.push([nemesis.posX, nemesis.posY]);
            console.log("Bomberman position is " + bomberman.posX + "," + bomberman.posY);
            console.log("Nemesis' position is " + nemesis.posX + "," + nemesis.posY);


            // var nemesisBombs = [];
            nemesisBombs.push(nemesis.posX, nemesis.posY);
            var indexN
            for (indexN = 0; indexN < nemesisBombs.length; indexN += 2) {
                if (bomberman.posX == nemesisBombs[indexN] && bomberman.posY == nemesisBombs[indexN+1])
                {
                    bomberman.defeat = true;
                  // console.log("You were detonated by Nemesis, Game Over!");
                }
                else
                {
                    bomberman.defeat = false;
                  // console.log("Phew! You survived another round!");
                }
            }

            // var bombermanBombs = [];
            bombermanBombs.push(bomberman.posX, bomberman.posY);
            var indexB
            for (indexB = 0; indexB < bombermanBombs.length; indexB += 2) {
                if (nemesis.posX == bombermanBombs[indexB] && nemesis.posY == bombermanBombs[indexB+1])                 {
                    bomberman.victory = true;
                    // console.log("You detonated your Nemesis, Sweet Victory!");
                }
                else
                {
                    bomberman.victory = false
                  // console.log("Your Nemesis survived this round.");
                }
            }
        },

        print: function() {
          if (bomberman.victory == true && bomberman.defeat == false)
          {
            console.log("You detonated your Nemesis, Sweet Victory!");
          }
          else if (bomberman.victory == false && bomberman.defeat == true)
          {
            console.log("You were detonated by Nemesis, Game Over!");
          }
          else if (bomberman.victory == true && bomberman.defeat == true)
          {
            console.log("You both died. Result is a Draw!");
          }
          else
          {
            console.log("Looks like you both survived, go again!");
          }
        }
};

bomberman.move();
bomberman.move();
bomberman.move();
bomberman.move();

console.log(bombermanBombs);
console.log(nemesisBombs);
// console.log(bombermanBombs[0][0]);
// console.log(bombermanBombs[0][1]);
// console.log(bombermanBombs[1][0]);
// console.log(bombermanBombs[1][1]);
// console.log(bombermanBombs[2][0]);
// console.log(bombermanBombs[2][1]);
// console.log(bombermanBombs[3][0]);
// console.log(bombermanBombs[3][1]);

bomberman.print()

________________________________________________________________________________________

// Reflection
//
//
// QUESTION: What was the most difficult part of this challenge?
//   ANSWER:  The hardest part of this challenge was visualizing where
//   everything needed to belong. I have the feeling that I have too
//   much activity going on within one object because there are multiple
//   properties and multiple sub functions that must run anytime it is
//   called. I tried to separate these out into other objects but then
//   I had problems with the scope of my variables and value holders.
//   This challenge was kind of like giving a toddler a toy truck for a
//   day, and asking them to drive themselves to daycare the next day.
//   I'm still learning to walk here.


// QUESTION: What did you learn about creating objects and functions
// that interact with one another?
//   ANSWER:  my functions interact correctly, but there were lots of
//   problems with my for loop and the resulting outcomes being returned.
//   I realized that it is very important to know where the data is coming
//   from and where it can be accessed because I had some issues with
//   data not being visible to my functions depending on where I had
//   declared it. It's also very important what order the processes
//   are performed in as certain functions require the output of other
//   functions which need to come before them.


// QUESTION: Did you learn about any new built-in methods you could use
// in your refactored solution? If so, what were they and how do they work?
//   ANSWER: I ended up using the push method, whcih I had previously
//   used in Ruby to build an array of previously visited locations to
//   record where bombs had been dropped.I also used a for loop, if
//   and else and else if statements, and the math.random method to
//   decide where the characters moved.


// QUESTION: How can you access and manipulate properties of objects?
//   ANSWER: these properties can be accessed using the dot notation on
//   the object that they are properties of. They can then be set to new
//   values or manipulated using any of the built-in methods in js or by
//   calling a function on them.



//
//
//
//
//
//