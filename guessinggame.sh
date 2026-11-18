#!/usr/bin/env bash
# File: guessinggame.sh

function ask_guess {
    echo "How many files are in the current directory? Please enter your guess:"
    read guess
}

file_count=$(ls -1 | wc -l)

ask_guess

while [[ $guess -ne $file_count ]]
do
    if [[ $guess -lt $file_count ]]
    then
        echo "Your guess is too low. Try again:"
        read guess
    else
        echo "Your guess is too high. Try again:"
        read guess
    fi
done

echo "Congratulations! You guessed the correct number of files."z