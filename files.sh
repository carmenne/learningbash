#!/bin/bash

# Prompt the user for a directory name
echo "Please insert a directory name"
read dir_name

# Create the directory
mkdir $dir_name

#Change to the new directory and print the path
cd $dir_name
pwd

# Create a bunch of empty file
touch f1.txt f2.txt f3.txt
ls

# Add Come content
echo "I am the first file" > f1.txt
echo "I am the second file" > f2.txt
echo "I am the third file" > f3.txt

cat f1.txt f2.txt f3.txt

echo "Goodbye, user"

# Clean
rm -r ../$dir_name
