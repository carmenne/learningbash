### Dislay output in a terminal
#### Echo and printf (try_echo.sh)
I learned how to print in the terminal using `echo` and `printf`.  
I also learned the difference between no quotes,  
double quotes nd single quotes.  
The example fromt he book was not complete.  

In order to enable escape characters, wcho needs the option -e.  

I learned format printing with `printf` (left alignment, width, 
number of floating points etc)  

I also learned how to print colored output.  

#### Variables
##### Scopes
Variables can be assiged using the syntax 'name=value'  
A variables is exported to the child process by suntax 'export name'  
When running name=value ./child_script.sh, the variables scope is  
limited to the children process scope.  
For instance:  

example.sh  
```bash
#!/bin/bash
My variables is: ${my_var}
```

```bash
chmod +x example.sh
my_var="Hi, parent scope" 
export my_var
./example.sh #My variables is: Hi, parent scope"
my_var="Hi, child scope" ./example.sh #My variables is: Hi, child scope
```
##### Expand variables
Variables are explanded when used with double quotes and referenced by  
'$var' or ${var}  
##### Get variable length
var=123456789123456789
echo ${#var} #18

##### Special variables
Certain special characters expand to system parameters.  
For example, '\u' expands to username, '\h' expands to hostname,  
and '\w' expands to the current working directory.  

