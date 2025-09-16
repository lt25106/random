$answer = Get-Random -Minimum 0 -Maximum 100
$count = 1
while ($true) {
  $guess = Read-Host "Guess the number between 0 and 100"
  if ($guess -gt $answer) {
    Write-Host "Too high! Try again."
  } elseif ($guess -lt $answer) {
    Write-Host "Too low! Try again."
  } else {
    Write-Host "Congratulations! You guessed the number."
    Write-Host "It took you $count tries."
    break
  }
  $count++
}