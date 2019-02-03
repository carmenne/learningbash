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
  
### Commands to display info/help  
`man ls` - displays the first occurence about the ls command. It also informs
about the section where it was fist found  
`man 5 crontab` - displays the occurence from the 5th section  
`man -a crontab` - displays all occurences  
`apropos who` - searches for commands that contains word who  
`whatis who` - similar to apropos but returns only exact matches  
`info`  
`pinfo`  

### Simple commands  
#### Syntax
``` bash
command [-option1option2..optionn] [arg1] [arg2]..[argn]RETURN
```

#### Placing a variable in the environment of a child
``` bash
[name=value] command line
```
``` bash
cat echo_ee
# echo "The value of the ee variable is: $ee" 
chmod +x .\echo_ee
ee=90
echo $ee
90 #parent scope
ee=80 .\echo_ee
# The value of the ee variable is: 80 #child scope

```

#### Executing a command
If the shell finds an executable file with the filename specified by the command (it searches using the PATH variable),
it will start a **new process** that wil execute the command.  
The shell passes the options and arguments to the program and then enters a sleep state.  
When the program finishes, the shell wakes up and prompts the exit status of the program.  

### Redirection
Redirection means replacing standard input/standard output with files and/or utilities.

#### Redirecting standard output
```bash
comand [arguments] > filename
```

#### Redirecting standard input
```bash
comand [arguments] < filename
```

#### /dev/null
/dev/null device is a data sink, commonly referred to as a bit bucket.  
You can redirect ouput you do not want to see to /dev/null  
``` bash
echo 'Hi there' > /dev/null # displays nothing
```

Reading from /dev/null, yields a null string.  
You can truncate a file with the following command  
``` bash
cat /dev/null > messages
```

#### Pipeline
A pipeline redirected the standard ouput from a previous command to the standard input of a subsequent commands (after the '|' pipe operator)

```bash
command_a [arguments] | commands_b [arguments]
```
An equivalent with redirection (except for the fact that pipleline does not create temp files):
```bash
command_a [arguments] > temp
command_b [arguments] < temp
rm temp
```

More precisely:
```bash
[time][!]command1[|||&command2...]
```
where:
- `time` is an optional command that displays system resouces;
- `!` logically negates the exit status returned by the pipeline. The exit status of the pipeline is the exit status of
the last command, unless `pipefail` is specified, in which case is the exit status of the rightmost failing command
- `|&` is a shorthand for `2>&1`, which sends both standard ouput and standard error of command 1 to the standard
input of command2



