#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
  srand(time(NULL));  
  
  int answer = rand() % 101;
  int guess;
  int counter = 1;

  while (1) {
    printf("Guess the number between 0 and 100 inclusive: ");
    scanf("%d", &guess);
    if (guess < answer) {
      puts("Too low");
    } else if (guess > answer) {
      puts("Too high");
    } else {
      puts("Correct!");
      printf("Guesses taken: %d\n", counter);
      break;
    }
    counter++;
  }

  return 0;
}