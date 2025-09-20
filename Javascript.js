const readline = require("readline");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

const answer = Math.floor(Math.random() * 101);
let counter = 1

function askGuess() {
  rl.question("Guess the number between 0 and 100: ", guess => {
    if (guess < answer) {
      console.log("Too low");
      counter++;
      askGuess();
    } else if (guess > answer) {
      console.log("Too high");
      counter++;
      askGuess();
    } else {
      console.log("Correct!");
      console.log("Guesses taken: " + counter);
    }
  });
}

askGuess();