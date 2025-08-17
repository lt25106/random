import java.util.Scanner;

public class Main {
  public static void main(String[] args) {
    int a = (int) (Math.random() * 102);
    int attempts = 0;

    Scanner myObj = new Scanner(System.in);

    while (true) {
      System.out.println("guess a number from 0 to 102:");
      int guess = myObj.nextInt();
      attempts++;
      if (guess < a) {
        System.out.println("too low");
      } else if (guess > a) {
        System.out.println("Too High");
      } else {
        System.out.println("You took " + attempts + " attempts");
        break;
      }
    }
  }
}