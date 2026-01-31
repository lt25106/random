Answer = math.random(0,100)
Count = 1
while true do
  print("Guess a number between 0 and 100: ")
  Guess = io.read("n")
  if Guess < Answer then
    print("Too low!")
  elseif Guess > Answer then
    print("Too high!")
  else
    print("Correct!")
    print("Guesses taken: " .. Count)
    break
  end
  Count = Count + 1
end