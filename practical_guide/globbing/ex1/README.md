`echo may?report` - expands the list of files tat matched the pattern
`ls may?report` - expands the list of files that matched the pattern

The shell first expands the ambiguous file reference into a 
list of files in the working directory that match the string may?report.
It then passes this list to echo, as though you had entered 
the list of filenames as arguments to echo. 
The echo utility displays the list of filenames.

A whildcard does not match a leading period 
(one that indicates a hidden filename). 
When you want to match filenames that begin with a period, 
you must explicitly include the period in the ambiguous file reference.
