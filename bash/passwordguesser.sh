#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           * Do not use the exit command

myString="TestString"
referenceString="scripting"

[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."

#Task-1
read -p "Make a guess:" myString

#Task-2
if [ $myString = $referenceString ]
then
	echo "You got it right !"
else
	echo "The password avoids you..."
fi

#Task-3
for try in {1..3}
do
	read -p "Try ($try): Give it another try:" myString
	if [ $myString = $referenceString ]
	then
		printf "You guessed the right password!\n"
		break
	else
		echo "The password avoids you..."
	fi
done
