import random as r
answer = r.randint(0,100)
count = 1
while True:
  guess = int(input("Guess the number between 0 and 100: "))
  if guess < answer:
    print("Too low!")
  elif guess > answer:
    print("Too High!")
  else:
    print("Correct!")
    print("Guesses taken:", count)
    break
  count += 1  
