ans=$RANDOM%103
attempts=0
while ((guess != ans)); do
    ((attempts++))
    read -p "Guess a number from 0 to 102: " guess
    if ((guess > ans)); then
        echo "Too High"
    elif ((guess < ans)); then 
        echo "too low"
    else 
        echo "Correct!"
        echo "Guesses taken: $attempts"
    fi
done
