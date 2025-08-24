package main

import (
	"fmt"
	"math/rand"
)

func main() {
	var guess int
	count := 1
	answer := rand.Intn(100)
	for {
		fmt.Print("Guess the number between 0 and 100: ")
		fmt.Scan(&guess)
		if guess < answer {
			fmt.Println("Too low!")
		} else if guess > answer {
			fmt.Println("Too high!")
		} else {
			fmt.Println("Correct!")
			fmt.Println("Guesses taken: ", count)
			break
		}
		count++
	}
}
