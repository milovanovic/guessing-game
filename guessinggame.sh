#!/usr/bin/env bash
# File: guessinggame.sh

clear
declare -i numFiles
numFiles=$(find . -maxdepth 1 -not -type d | wc --lines)

function makeValidGuess {
   until read -p "Please enter how many files are in the current directory: " guess; [[ "$guess" =~ ^[0-9]+$ ]]; do
      echo -e "\nPlease enter a valid non-negative integer value!\n"
   done
}

while makeValidGuess; do
   if (( guess < numFiles )); then
      echo -e "\nYour guess is too low."
   elif (( guess > numFiles )); then
      echo -e "\nYour guess is too high."
   else
      echo -e "\nCongratulations! The answer is $numFiles, indeed. Your guess is right!"
      exit
   fi
done
