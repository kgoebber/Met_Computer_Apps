## Python If/Then Statements

The logic of if-then statements works in exactly the same way, just the syntax changes. One main difference between Fortran and Python is that Python works on indentions to signify what is within and outside of an if statement (or a do loop). This is helpful as it requires you to properly indent your code, which makes it imminently more readable. To indent you line you do not need to use a tab, a single space will do just fine, you just have to be consistent within that block of code. If you accidentally have a mis-indented line and Python doesn’t know what to do, it will tell you when you go to run the code.

Here is an example of equivalent if statements in Fortran and Python.

**Fortran**
```fortran
a = 5
b = 10
if (a .LT. b) then
    print *, a
else
    print *, b
endif

print*, "Out of if"
```

**Python**
```py3
a = 5
b = 10
if (a < b):
   print(a)
elif (a == b):
   print('a = b = '+str(a))
else:
   print(b)

print("Out of if")
```

Notice the colons in the Python code after the if logical statement as well as the else and no “endif”. The unindented nature of the print statement at the end tells the Python program that we are no longer in the if statement.
