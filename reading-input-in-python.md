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

# The prompt for the input goes inside of the raw_input command and is bounded by quote marks.
firstname = raw_input("Type your first name ")

# Same as the above command, but with a newline (\n) character to make it look nicer on the screen.
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

