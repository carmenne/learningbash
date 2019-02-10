When you use the redirect output symbol (>) on a command line, 
the shell creates the output file immediately, 
before the command is executed. Demonstrate that this is true.

`echo "This is a mine" > abstract`
`cat abstract | tr m l` #displays This is a mine
`cat abstract | tr m l > abstract` # displays nothing (an empty file was
                                   # created, so cat abstract returns
                                   # nothing
