!! - to repeat the previous command
sudo !! - to repeat the previous command with root privileges
^n^m^ - replaces n with m in the previous command
For example:
carmen@optiplex755:~/tutorial/linux$ nano re
carmen@optiplex755:~/tutorial/linux$ ^re^README.md^
!$ - uses the last token from the previous command
For example:
cat README.md
nano !$

