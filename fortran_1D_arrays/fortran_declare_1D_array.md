## Declaring Arrays in Fortran

Declaring an array is very similar to the process of declaring a variable. The type of the array works the same way as with variables; they can be integer, real, character, logical, etc. The main difference is that you will need to tell Fortran the 'size' of the array (basically how many addresses you'll need). This is done to let the computer know how much space it is going to need to store the information when the program runs.

Define variable name, then set size

```fortran
real tmpf

dimension tmpf(5)
```
In the above example, the variable (`tmpf`) is first declared as a real, then using the `dimension` keyword the size is defined for a particular variable (`tmpf(5)`) with a size of 5.

However, we can combine those two steps into one and define variable and and size all at once.

```fortran
real tmpf(5)
```

In this example we have an implied `dimension` call the same as the previous example. In both of these examples a variable called `tmpf` has been declared with five unique addresses. Addresses in Fortran default to a one-based array. Therefore, in the above example the addresses will be assumed to be 1 to 5, since only the max value of 5 was given in the declaration call.

Although, we don't have to be relegated to the assumed address names. Fortran allows for the programmer to define the addresses (index values) within the dimension call. For example,

```fortran
DIMENSION name(min:max)
```
- If min = 1, then only the max is needed
 - This is the assumed value organization

- Minimum value can be a negative value or zero

Some examples of different ways of declaring the index values of Fortran 1D arrays.

#### Example 1

```fortran
INTEGER TEMPS
DIMENSION TEMPS(10:40)
```
The above example uses the verbose method of first defining the variable (`temps`), then declaring the index value range (10 to 40)

#### Example 2

```fortran
INTEGER WIND(1940:2005)
```
In this example we are declaring the name of the variable and the index values all at the same time. The addresses (index values) for this example begin with 1940 and end with 2005.

#### Example 3

```fortran
INTEGER NUMBER(-10:10)
```
In this example the index values begin with a negative number (-10).

#### Example 4
```fortran
REAL FCTWIND(0:23)
```
This example makes Fortran into a zero-based array, like it is in Python.
