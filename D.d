import std.stdio, std.random, std.conv, std.string;
void main() {
  int ans = unpredictableSeed % 101;
  int count = 1;
  while (true) {
    write("Guess a number between 0 and 100: ");
    int guess = to!int(std.string.strip(readln));
    if (guess < ans)
      writeln("Too low!");
    else if (guess > ans)
      writeln("Too high!");
    else {
      writeln("Correct!\nGuesses taken: ", count);
      break;
    }
    count++;
  }
}