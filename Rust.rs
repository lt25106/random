use std::io;

use rand::Rng;

fn main() {
  let ans: u8 = rand::rng().random_range(1..=100);
  let mut count: i32 = 1;
  loop {
    let mut guess: String = String::new();
    println!("Guess the number from 1 to 100: ");
    
    io::stdin()
    .read_line(&mut guess)
    .expect("Failed to read line");
    
    let iguess: u8 = guess.trim().parse().unwrap();
    if iguess < ans {
      println!("Too low!");
    } else if iguess > ans {
      println!("Too high!");
    } else {
      println!("Correct! You took {count} guesses.");
      break;
    }
    count += 1;
  }
}