## The Format Statement
```fortran
n   FORMAT(list of format statements)
```
A unit number (`n`) in space 1-5 identifies the statement
- must be a unique number (can’t be a file unit number or a continue statement number)

- What would a format statement be for?
  - 3.14159
- Letter code F, then we need to specify how many TOTAL characters in the number and where the decimal should be
 - `F7.5` is real number seven characters long (including the decimal) with five digits occurring after the decimal.

A full format statement would look like the following:
```fortran
 101   FORMAT(F7.5)
 ```
