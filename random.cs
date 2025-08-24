Random random = new Random();
int ans = random.Next(0, 101);
int count = 1;

while (true)
{
  Console.Write("Guess a number between 0 and 100: ");
  int guess = int.Parse(Console.ReadLine());
  if (guess < ans)
  {
    Console.WriteLine("Too low!");
  }
  else if (guess > ans)
  {
    Console.WriteLine("Too high!");
  }
  else
  {
    Console.WriteLine("Correct!");
    Console.WriteLine($"Guesses taken: {count}");
    break;
  }
  count++;
} 