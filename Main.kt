fun main() {
    val answer = (0..102).random()
    var attempts = 0

    while (true) {
        println("Guess a number from 0 to 102:")
        var userInput = readln().toInt()
        attempts++
        if (userInput < answer) {
            println("too low")
        } else if (userInput > answer) {
            println("Too High")
        } else {
            println("you took $attempts attempts.")
            break
        }
    }
}