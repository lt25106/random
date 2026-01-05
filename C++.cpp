#include <iostream>
#include <cstdlib>
using namespace std;
int main() {
  srand(time(0));
  int answer = rand() % 101;
  int guess;
  int counter = 1;
  while (true) {
    cout << "Guess the number between 0 and 100 inclusive: ";
    cin >> guess;
    if (guess < answer)
      cout << "Too low!\n";
    else if (guess > answer)
      cout << "Too high!\n";
    else {
      cout << "Correct! Guesses taken: " << counter;
      break;
    }
    counter++;
  }
}
