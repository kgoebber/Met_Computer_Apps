## Mathematical Operators in Python

A really nice thing about moving from Fortran to Python is that all of the mathematical functions are EXACTLY THE SAME!

* Addition 		(+)
* Subtraction 		(-)
* Division 		(/)
* Multiplication 	(*)
* Exponentiation 	(**)

The order of operations is same as well and be sure to use parentheses to have the computer complete your calculations the way you intend it to. There is a slight change in some of the language around the types used in Python, but just remember that in Python Floats and Integers work the same as Reals and Integers in Fortran.

Not much change is needed for conversion to Python for logical statements, other than the fact that you now use symbols instead of letters to indicate the logical test.

| Fortran | Python |
|:-------:|:------:|
|   .GT.  |   >    |
|   .GE.  |   >=   |
|   .LT.  |   <    |
|   .LE.  |   <=   |
|   .EQ.  |   ==   |
|   .NE.  |   !=   |
|   .AND. |   &    |
|   .OR.  |   \|   |

That last symbol for an or statement is the pipe symbol (or vertical line), which is access with the shift key while hitting the forward slash (\) key.

Equation Examples:
* Temperature from Fahrenheit to Celsius
```py
    tmpc = (5/9)*(tmpf - 32)
```
* Temperature from Celsius to Kelvin
```py
    tmpk = 273.15 + tmpc
```
* Poisson's Equation (Potential Temperature)
```py
    theta = tmpk * (1000/p)**(287/1004)
```
