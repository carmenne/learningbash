`!!` - to repeat the previous command  
`sudo !!` - to repeat the previous command with root privileges  

`^n^m^` - replaces n with m in the previous command  
```bash 
carmen@optiplex755:~/tutorial/linux$ nano re
carmen@optiplex755:~/tutorial/linux$ ^re^README.md^
```

`!$` - uses the last token from the previous command  
```bash
cat README.md
nano !$
```

`ls` - displays the files from the working directory  
`pwd` - prints the working directory path  
`ls -l` - displays the files and their permisson access  
`cp from to` - copies a file  
`rm filename` - removes a file  
`mv from to` - moves a file  
`cat file` - displays the contents of a file  
`echo Hello echo` - copies its arguments to the screen  
`date` - displays date  
`touch README.md` - creates an empty file  
