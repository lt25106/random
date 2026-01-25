import "dart:math";
import "dart:io";

final random = Random();
final ans = random.nextInt(101);
var attempts = 1;
void main() {
  while (true) {
    stdout.write("Guess the number between 0 and 100: ");
    final guess = int.parse(stdin.readLineSync()!);
    if (guess < ans)
      stdout.writeln("Too low");
    else if (guess > ans)
      stdout.writeln("Too high");
    else {
      stdout.writeln("Correct!\nGuesses taken: $attempts");
      break;
    }
    attempts++;
  }
}
