## While Loops

- Control with a logical expression
  - repeating the loop is based on the outcome of the logical expression

- Repetition for an unknown number of times
  - repetition continues for a true logical expression
  - repetition ends for a false logical expression
  - this is called a WHILE loop
  - not part of standard FORTRAN

Fortran Syntax

```fortran
do while (logical-exp)

    sequence statements

enddo
```
or
```fortran
while (logical-exp) do

    statements

end while
```
### DO WHILE Loop Examples

```fortran
j=10

do while (j .lt. 15)

    print *, 'J = ', j

end do
```
- How does j change here?
- An infinite loop was created! It will never stop!
- Need to include a way to increment j WITHIN the loop!!!!
 - This must be done in order for the statement to be false at some point.

```fortan
j=10

do while (j .lt. 15)

    print *, 'J = ', j
    j=j+1

end do
```
The output of the above code should be

```fortran
J = 10
J = 11
J = 12
J = 13
J = 14
```

The last value to be printed to the screen is when j is equal to 14 because our logical statement says only do while j is less than 15, so when j is 15, then the statement is false.
