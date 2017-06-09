## While Loops

There are times where a loop is needed for an unceratin number of iterations. This is often the case when code is iterating to a convergent solution. Therefore, we can loop using a logical expression to repeat the loop as much as needed until the logical expression is no longer True. This was not a part of standard Fortran, but is acceptable to use when needed.

Fortran Syntax

```fortran
do while (logical_exp)

    statement_sequence

enddo
```
or
```fortran
while (logical_exp) do

    statement_sequence

end while
```
where the `logical_exp` is a logical expression of the same form as for IF statements. They can be simple or compound. Just make sure that the statement can be false at some point, otherwise you'll create an infinite loop!

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
