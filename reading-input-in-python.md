# Reading Input in Python

There are a lot of different ways to read data into a Python program. This chapter will review some of the basic input methods from the commandline as well as some easy methods through various modules.

## Reading Data From the Command Line

There are times when we want to be able to have the person running a program give input after being asked a question. We used this feature in Fortran and we had a simple read statement;

```FortranLexer
print*, "Input your first name: "
read(*,*) firstname
```

In python we need to use a function called `raw_input()`

```py
firstname = raw_input("Input your first name: ")
```

In a way Python combines the two lines that we had to use in Fortran into one. **Note:** using this method the Python interpreter assumes a string format for your input. However, Python makes it easy to convert between types by using the `int()`,`str()`, or`float()`functions to convert to the desired data type.

Here is an example script that will read from commandline input.

```py
# This python script is designed to illustrate how to read in a parameter from the command line
#
# By: Kevin Goebbert

# To input from the command line, use the raw_input() command

# The prompt for the input goes inside of the raw_input command 
# and is bounded by quote marks.
firstname = raw_input("Type your first name ")

# Same as the above command, but with a newline (\n) character 
# to make it look nicer on the screen.
lastname = raw_input("Type your last name \n")

# The print command works similar to that of Fortran, except no need for the *,
# Here you are essentially creating a string and so the command looks a l
# ittle different than the Fortran print command
print("Your name is "+firstname+" "+lastname)
```

You can copy the code above to a file \(e.g., read\_command.py\) and then to run Python code you would need to type of the following at the Linux command prompt:

```linux
> python read_commandline.py
```

When you run the program it will first display the question "Type your first name " and the cursor will remain on that same line. It is then waiting for your response and will only move on once you hit the ENTER key. Once you have entered your first name, then it will propmt the second statement "Type your last name" and will put the cursor on a new line due to the `\n` newline character. It will again wait until you have entered something before proceeding with the remainder of the program and finally output the final print stament containing the values that you input from the commandline.
<div class="pagebreak"></div>
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
