#!/usr/bin/env bash


# Get the number of files in directory, assign to variable
function correct_number {
ls | wc -l
}
answer=$(correct_number)

# Start the game
echo "Welcome to the guessing game! You need to guess how many files are in the current working directory. Keep guessing until you get it right." 
echo "There's a great prize for winning! Type in your first guess:"

# Record the first response, and validate that it's an integer.
function integer {
read response
if ! [[ "$response" =~ ^[0-9]+$ ]]
	then echo "Sorry integers only. Try again:" && integer
fi
}

# Check whether the answer is equal to, greater than or less than the answer. If a wrong answer is given, the function 'loop' starts again
function correct {
if [[ $response -eq $answer ]]
then echo "correct! Your prize: a sense of deep satisfaction. Goodbye."
else 
if [[ $response -gt $answer ]]
then echo "your guess was too high. Try again:" && loop
else 
if [[ response -lt answer ]] 
then echo "your guess was too low. Try again:" && loop
fi
fi
fi
}

# Run both the integer and correct in a for loop 
function loop { 
for i in response
do
integer && correct
done 
}

loop

