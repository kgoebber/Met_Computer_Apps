## Formatted Output

Formatted output is essential to making readable output that can be easily read by an end-user. There are a number of different ways to format output to the screen using print statements. There are other methods for writing output to a file, which we will leave to a later time.

### Specifying Format

Similar to Fortran we can specify different types of formats (strings, integers, floating points), but the syntax is a bit different. Let's start with a simple example of printing out the twelve months on one line
```py
print('0       1         2         3         4         5         6')
print('12345679012345678901234567890123456789012345678901234567890')
print('-----------------------------------------------------------')
print(' Jan  Feb  Mar  Apr  May  Jun  Jul  Aug  Sep  Oct  Nov  Dec')
```

Output:
```linux
0       1         2         3         4         5         6
12345679012345678901234567890123456789012345678901234567890
-----------------------------------------------------------
 Jan  Feb  Mar  Apr  May  Jun  Jul  Aug  Sep  Oct  Nov  Dec
```

Each space and character length is the same, so you can literally control the formatting by how you type your print function.

However, when you are wanting to print out numbers, we will likely want to print directly from arrays and use formats to help us print it exactly as we want the end-user to view it. There is great additional information at the following link if you are looking for supplementary material for [Python Formatting](http://www.python-course.eu/python3_formatted_output.php).

### Common Format Characters

* %s is for string format

* %d is for integer format

* %f is for float format

We can then modify them, just as in Fortran, by addition the character width before the format identifier

* ```'%5.2f'``` would be a floating point number, five spaces of width, with two spaces after the decimal point

* ```'%6d'``` would be an integer of six spaces in width

Repetition can also be added to the format statement

* ```5*'%5.2f'``` will generate five floating numbers in a row of width five and two after the decimal point

```py
print('0        1         2         3         4         5         6')
print('123456789012345678901234567890123456789012345678901234567890')
print('------------------------------------------------------------')
print(12*'%5s' %('Jan','Feb','Mar','Apr','May','Jun',
                 'Jul','Aug','Sep','Oct','Nov','Dec'))
data = [2001, 0.25, 0.45, -1.26, 0.00, -0.02, -0.20, -0.25, -0.07, -0.65, -0.24, 0.63, -0.83]
```

Output:
```linux
0        1         2         3         4         5         6
123456789012345678901234567890123456789012345678901234567890
------------------------------------------------------------
  Jan  Feb  Mar  Apr  May  Jun  Jul  Aug  Sep  Oct  Nov  Dec
```
