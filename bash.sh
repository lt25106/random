ans=$RANDOM%103
att=0
while ((guess != ans)); do
    ((att++))
    read -p "Guess a number from 0 to 102: " guess
    if ((guess > ans)); then
        echo "Too High"
    elif ((guess < ans)); then 
        echo "too low"
    else 
        echo "You took $att attempts"
    fi
done