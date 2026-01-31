program random
implicit none
  integer :: guess
  integer :: answer
  integer :: counter
  real :: randval
  call random_number(randval)
  answer = int(randval * 101)
  counter = 1

  do
    print *, 'Guess the number between 0 and 100: '
    read *, guess
    if (guess < answer) then
      print *, 'Too low'
    else if (guess > answer) then
      print *, 'Too high'
    else
      print *, 'Correct!'
      print *, "Guesses taken: ", counter
      exit
    end if
    counter = counter + 1
  end do
end program random
