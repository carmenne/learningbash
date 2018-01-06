#!/bin/bash

# Non-existing file
ls filedoesnotexist.txt
# Display the code
echo $?

# Existing file
# Firstly, create it
echo "I exist" > filethatexists.txt

ls filethatexists.txt
echo $?
