int a = (int) (Math.random() * 103)
int attempts = 0

def myObj = new Scanner(System.in)

while (true) {
    println "Guess a number from 0 to 102:"
    int userInput = myObj.nextInt()
    attempts++

    if (userInput < a) {
        println "too low"
    } else if (userInput > a) {
        println "Too High"
    } else {
        println "You took $attempts attempts"
        break
    }
}