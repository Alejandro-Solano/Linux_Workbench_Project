#!/usr/bin/env bash
# File: guessinggame.sh

function CheckUserGuess {
   if [ $number_of_files_in_current_directory -eq $1 ]
   then
      echo -e "    Weee..., congratulations you guessed it right !! \n      You are free to go now.\n\n"
      guess_correctly=true
   elif [ $number_of_files_in_current_directory -gt $1 ]
   then
      echo "    You guessed to low, try it again!"
   elif [ $number_of_files_in_current_directory -lt $1 ]
   then 
      echo "    You guessed to high, try it again!"
   fi
}
clear

number_of_files_in_current_directory=$(ls | wc -l)

echo -e "   =========================================================="
echo -e "        Let's play a game ... "
echo -e "        Guess the number of files in current directory"
echo -e "   ========================================================="

guess_correctly=false

while [ "$guess_correctly" = "false" ]
do  
   read -p '    Your guess: ' numberOfFilesguess
   CheckUserGuess "$numberOfFilesguess"
done


