@echo off
set /a answer=%RANDOM% %% 101
set /a count=1
:loop
set /p guess=Guess the number between 0 and 100: 
if %guess% gtr %answer% (
  echo Too high! Try again.
) else if %guess% lss %answer% (
  echo Too low! Try again.
) else (
  goto end
)
set /a count+=1
goto loop
:end
echo Congratulations! You guessed the number
echo It took you %count% tries.