## Reading From a File

To open a file in a Python program you need to use an open command, which is similar to the one used in Fortran. The open command needs to be set to a variable name (sometimes called a handle), which will have attributes that you will use to read from that particular file. This handle is similar to the unit number used in Fortran to identify the read file.

In Python and open command for writing and reading are given below:

```py
infile = open('input.txt', 'r')
```

The variable name `infile` identifies the file (`input.txt`) within the program and with the `'r'` signifies that we are opening the file to read. To open a file for writing you would use the same construct but change the `'r'` to `'w'` which will open a file for writing to it. You can also open a file with read and write permissions with `'rw'`.

To read a line we have a slightly different command in Python. If we want to read from the infile variable defined above, then we would issue the following command in our program:

```py
infile.readline()
```

This will read exactly one line from our file (infile) and be ready to read the next line down if we were to call `infile.readline()` again. This is the same as the Fortran READ statement. For every readline() that is called in Python, it will read one line and move down to the next line ready to read again.

A different feature in Python is that you can read all of the lines at once using the following command:

```py
infile.readlines()
```

This is a nice feature, but it acts a little differently than the readline() command. Please watch the video posted on the class blackboard site (or the link to the YouTube video) for more information.


cp /home/kgoebber/met330/tempconv.py tempconv.py
