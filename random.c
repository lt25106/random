#include <stdio.h> // Standard input/output library
#include <stdlib.h> // Standard library for general functions
#include <time.h> // Library for time functions

int main() {
  srand(time(NULL));  
  
  int answer = rand() % 101; // Generate a random number
  int guess;
  int counter = 1;

  while (1) {
    printf("Guess the number between 0 and 100 inclusive: "); // Example: printing to console
    scanf("%d", &guess);
    if (guess < answer) {
      printf("Too low\n");
    } else if (guess > answer) {
      printf("Too high\n");
    } else {
      printf("Correct!\n");
      printf("Guesses taken: %d\n", counter);
      break;
    }
    counter++;
  }

  return 0; // Indicate successful execution
}