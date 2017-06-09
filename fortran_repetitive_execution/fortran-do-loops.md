## Do Loops

There will be many times in coding where you will want/need to do the same set of actions repeatedly, in which case you would want to use some sort of loop to concisely write and execute that portion of code. The do loop in Fortran is the simple looping operator that is controlled by an iterative counter.

The following is the syntax for a do loop in Fortran.
```fortran
        DO n control-var = initial-val, limit, step-val

             program statements

 n      continue
```
where `n` is a statement number, `control-var` is the iterating variable (e.g., i or j), and `initial-value`, `limit`, and `step-value` are integer or real values over which the loop will occur.

The statement number is how a Fortran program is told where the end of the loop sequence is located. It is good coding practice to indent all of the statement sequence contained within the do loop by the same amount of spaces (typically four). Doing so will make the code much more readable to you and especially anyone who is trying to read your code to figure out what it is actually doing.

*NOTE: Indention is paramount to how the Python is formulated, so get used to indenting your code appropriately.*

The do-loop body is executed as long as the initial value is less than or equal to the end value, for a positive step value. Fortran also allows for a negative step value, which means that the initial value must be greater than the end value in order for the loop to execute.

### Simple Do Loop Examples

- Example 1

```fortran
      DO 100 i = 1, 10

         PRINT *, i

 100  continue
```

In the example above the `statement-number` is 100, the `control-var` is i, the `initial-value` is 1, and the `end-value` is 10. This means that there is an implied `step-value` of 1. The result of the code should be
```fortran
1
2
3
4
5
6
7
8
9
10
```
Since the loop will begin with the `initial-value` of 1 and continue until the `control-var` is greater than the `end-value`.

- Example 2

In this example we get rid of the `statement-number` and use an 'END DO' to signify the end of the do loop. Additionally, we have specified a negative `step-value`, which means we want to count down from our `initial-value`.

```fortran
        DO j = 200, 2, -5

          PRINT *, j

        END DO
```
The output of the above code should be

```fortran
200
195
190
185
180
...
...
...
20
15
10
5
```
The execution of the loop will end when the value of the `control-var` is less than the `end-value`. In the above case the next value of j is zero (0), which is less than 2, so the program would exit the do loop and not execute the code within the do loop.
