## Reading From a File

To open a file in a Python program you need to use an open command, which is similar to the one used in Fortran. The open command needs to be set to a variable name \(sometimes called a handle\), which will have attributes that you will use to read from that particular file. This handle is similar to the unit number used in Fortran to identify the read file.

In Python and open command for writing and reading are given below:

```py
infile = open('input.txt', 'r')
```

The variable name `infile` identifies the file \(`input.txt`\) within the program and with the `'r'` signifies that we are opening the file to read. To open a file for writing you would use the same construct but change the `'r'` to `'w'` which will open a file for writing to it. You can also open a file with read and write permissions with `'rw'`.

To read a line we have a slightly different command in Python. If we want to read from the infile variable defined above, then we would issue the following command in our program:

```py
infile.readline()
```

This will read exactly one line from our file \(infile\) and be ready to read the next line down if we were to call `infile.readline()` again. This is the same as the Fortran READ statement. For every readline\(\) that is called in Python, it will read one line and move down to the next line ready to read again.

If `input.txt` contained the following data:

```text
35
48
81
78
30
```

the first instance of `infile.readline()` would read the value 35, the second would move down one line and read the value 48, etc. Again these values will be strings and can be easily converted to another datatype as need using Python's built-in methods. If there are multiple lines, it is best to use a loop to read into a list or array.

A different method in Python is that you can read all of the lines at once using the following command:

```py
infile.readlines()
```

This is a nice feature, but it acts a little differently than the readline\(\) command. It will read all of the lines in at once and create a list of strings. One downside of reading by this method is that trailing newline \(`\n`\) character will remain with the read in value \(e.g., '35\n'\).

Here is an example script reading in a series of temperatures from the fiel \(`input.txt`\).

```py
# This program reads input from 'input.txt'
#
# By: Kevin Goebbert

# The following line will open the file that we wish to read in and use in the program.
infile = open('input.txt','r')

# This line will read in one line from the file, split the line on the commas 
# and assign the values to the variables on the left hand side. Note that you 
# can put all five variables on the left hand side.
tmpf1 = infile.readline()
tmpf2 = infile.readline()
tmpf3 = infile.readline()
tmpf4 = infile.readline()
tmpf5 = infile.readline()

# This line closes the file for reading.
infile.close()

# This series converts the read in temperatures from strings to floats
tmpf1 = float(tmpf1)
tmpf2 = float(tmpf2)
tmpf3 = float(tmpf3)
tmpf4 = float(tmpf4)
tmpf5 = float(tmpf5)

tmpc1 = (5/9)*(tmpf1 - 32)
tmpc2 = (5/9)*(tmpf2 - 32)
tmpc3 = (5/9)*(tmpf3 - 32)
tmpc4 = (5/9)*(tmpf4 - 32)
tmpc5 = (5/9)*(tmpf5 - 32)

# This is my code from the Fortran program, unchanged,
# to calculate the different temperatures and compute the means!
tmpk1 = 273.15 + tmpc1
tmpk2 = 273.15 + tmpc2
tmpk3 = 273.15 + tmpc3
tmpk4 = 273.15 + tmpc4
tmpk5 = 273.15 + tmpc5

meanc = (tmpc1 + tmpc2 + tmpc3 + tmpc4 + tmpc5)/5.
meanf = (tmpf1 + tmpf2 + tmpf3 + tmpf4 + tmpf5)/5.
meank = (tmpk1 + tmpk2 + tmpk3 + tmpk4 + tmpk5)/5.

# Printing some output to the screen for your viewing pleasure!
print("The original temperatures in Fahrenheit were: ")
print(tmpf1, tmpf2, tmpf3, tmpf4, tmpf5)
print("The converted temperatures in Celsius are: ")
print(tmpc1, tmpc2, tmpc3, tmpc4, tmpc5)
print("The converted temperatures in Kelvin are: ")
print(tmpk1, tmpk2, tmpk3, tmpk4, tmpk5)
print("The mean temperature in Celsius is: "+str(meanc))
print("The mean temperature in Fahrenheit is: "+str(meanf))
print("The mean temperature in Kelvin is: "+str(meank))
```

which gives the output

```linux
The original temperatures in Fahrenheit were: 
35.0 48.0 81.0 78.0 30.0
The converted temperatures in Celsius are: 
1.6666666666666667 8.88888888888889 27.222222222222225 25.555555555555557 -1.1111111111111112
The converted temperatures in Kelvin are: 
274.81666666666666 282.0388888888889 300.3722222222222 298.7055555555555 272.0388888888889
The mean temperature in Celsius is: 12.444444444444445
The mean temperature in Fahrenheit is: 54.4
The mean temperature in Kelvin is: 285.59444444444443
```



