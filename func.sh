#!/bin/bash

# Define the functions with 1, 2, 3 in their names
func1 () {
	echo "I am function number 1"
}

func2 () {
	echo "I am function number 2"
}


func2 () {
	echo "I am function number 2"
}

# Ask for the input
echo "Give me number 1, 2 or 3: "
read number
if [ $number -lt 1 ] || [ $number -gt 3 ]
then
	echo "Please insert 1, 2, or 3"
	exit 2
fi

# If this is reached, a good number was inserted
# Call the corresponding function
"func"$number
exit 0


