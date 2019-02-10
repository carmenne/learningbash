#! /bin/bash

# Double quotes vs single quotes
# Double quotes enable interpretation of special characters
# echo "Hello world!"
# In order to interpret special caraters as literals, no quotes or single quotes
# can be used. Special characters can also be escaped with backslash when
# used with double quotes
echo "Hello world\!"; # this should print Hello world!
echo Hello world!;
echo 'Hello world!';
