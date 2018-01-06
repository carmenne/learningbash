#!/bin/bash
# Script for performing simple arithmetic

# Define the arithmetic functions
add () {
	echo $(($1 + $2))
}

substract () {
	echo $(($1 - $2))
}

multiply () {
	echo $(($1 * $2))
}

divide () {
	if [ $2 -eq 0 ]; then
	echo "Cannot divide to 0"
	else
	echo $(($1 / $2))
	fi
}

# Ask for input parameters
# Ask for operator first
echo "Select the operation to be performed a=add, s=substract, m=multiply, d=divide "
read op
if [ $op == "a" ]; then
func="add"
elif [ $op == "s" ]; then
func="substract"
elif [ $op == "m" ]; then
func="multiply"
elif [ $op = "d" ]; then
func="divide"
else
echo "Please select one of the given options"
exit 2
fi

read -p "Give first number " n1
if [ $n1 -ne $n1 ]; then
echo "Please insert a number"
fi

read -p "Give second number " n2
if [ $n2 -ne $n2 ]; then
echo "Please insert a number"
fi

$func $n1 $n2
