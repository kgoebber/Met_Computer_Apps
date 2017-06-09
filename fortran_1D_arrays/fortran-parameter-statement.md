## Parameter Statement

When setting the size of an array it might be helpful to declare the size once so that if you ever change the number of times you are investigating, there is only one number that you will need to change! The tool to help in this case is the parameter statement.

First you must declare the parameter statement variable (e.g., LEN), then you can set its value with the parameter statement before using it to define the size of array variables. For example,

```fortran
INTEGER LEN
PARAMETER  (LEN=24)
REAL TEMP(LEN), SPD(LEN), PMSL(LEN), DEWPT(LEN)
```

Here an integer variable called `LEN` is declared, then the parameter statement allows the value of `LEN` to be defined as 24. Then all of the arrays that are defined on the last line all have the same size as defined by the value of `LEN`. If at some later time you wanted to increase the number of observations that you were investigating from 24 to 48, then you would only need to change the value of `LEN` once, instead of needing to find and change every instance of arrays that would need their size changed.
