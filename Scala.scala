@main
def random() =
  val r = scala.util.Random.nextInt(102)
  var att=0

  while (true)
    println("Guess a random number from 0 to 102:")
    val guess = scala.io.StdIn.readLine().toInt
    att+=1
    if guess > r then
      println("Too High")
    else if guess < r then
      println("too low")
    else
      println(s"Correct! You took $att attempts")