## Mathematical Operations

Fortran uses the very common and well known mathematical operators (summarized below). The order that the operations are processed is classic mathematical order:

1. All exponentiations are performed first; consecutive exponentiations are performed from right to left.
2. All multiplication and divisions are performed next, in the order in which they appear from left to right.
3. The additions and subtractions are performed last, in the order in which they appear from left to right.

Best practice is to include parentheses to help highlight the correct mathematical operation for someone reading the source code.

| Operator | Operation |
|:--------:|:---------:|
| + |	addition, unary plus |
| –	| subtraction, unary minus |
| \*	| multiplication |
| /	| division |
| \*\* |	exponentiation |


* Addition/Subtraction

  Common addition and subtraction work as expected with the added component that if the operation contains both an integer and a real, then the output is real. In the event that you set the output equal to a variable that was defined as an integer, then only the integer value (to the left of the decimal point) will be retained.
```fortran
    5 + 3 = 8
5.0 + 3.0 = 8.0
  5 – 3.0 = 2.0
```
* Multiplication
Multiplication works similarly to that of addition/subtraction.
```fortran
5.0*3.0 = 15.0
  5*3.0 = 15.0
    5*3 = 15
```
* Division
Integer division is problematic in Fortran in that it gives only the integer value of the division.
```fortran
  9 / 4 = 2
9.0/4.0 = 2.25
9 / 4.0 = 2.25
```
* Exponentiation
```fortran
   2.0**3 = 8.0
  -1.5**4 = -5.0625
(-1.5)**4 = 5.0625
```

## Functions

There are also a number of built in mathematical functions that are quite useful. A reminder that the Sine and Cosine functions expect the input value in Radians, so if you have a value in degrees a conversion is necessary (&pi;/180). The `MAX` and `MIN ` functions require a series of values to be input to determine the appropriate value.

| Function | Description | Data Type of Input | Data Type of Output |
| :------: | :---------: | :---------: | :---------: |
| ABS(x) | Absolute value of x | integer, real, double precision | Same as input |
| COS(x) | Cosine of x radians | real, double precision | Same as input |
| EXP(x) | Exponential function | real, double precision | Same as input |
| INT(x) | Integer part of x | real, double precision | integer |
| LOG(x) | Natural logarithm of x | real, double precision | Same as input |
| MAX(xl, . . . , Xn) | Maximum of xl, . . .,xn | integer, real, double precision | Same as input |
| MIN(xl, . . . , xn) | Minimum of xl, . . ., xn | integer, real, double precision | Same as input |
| MOD(x,y) | x (mod y); x - INT(x/y) * y | integer, real, double precision | Same as input |
| NINT(x) | x rounded to nearest integer | real, double precision | integer |
| SIN(x) | Sine of x radians | real, double precision | Same as input |
| SQRT(x) | Square root of x | real, double precision | Same as input |
