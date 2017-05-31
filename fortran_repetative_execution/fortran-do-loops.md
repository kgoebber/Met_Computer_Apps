## Do Loops

- If you need to do some action repeatedly
  - In other words: Do Loops

```fortran
        DO n control-var = initial-value, limit, step-size

             statement sequence

 n      continue
```
where `n` is a statement number, `control-var` is the iterating variable (e.g., i or j), and `initial-value`, `limit`, and `step-size` are integer or real values over which the loop will occur.

Do Loops

- The do-loop body is executed as long as
  - the initial value is less than or equal to the end value,
- Or for a negative step
  - the initial value is greater than the end value

Simple Do Loop Example

- Example 1

```fortran
      DO 100 i = 1, 10

         PRINT *, i

 100  continue
```
- Example 2

```fortran
        DO j = 200, 2, -5

          PRINT *, j

        END DO
```
Nested do loops

- A second (or third, or fourth, etc) do loop can be placed inside of another
- Indent to help keep track of the looping!!

- Nested do loop example

                do 100 iyear=2000, 2012

                    do 200 j= 2,6

                        print \*,&#39;Year=&#39;,iyear,&#39; Month=&#39;,j

 200      continue

                     print \*,&#39;Year=&#39;,iyear,&#39; Month=&#39;,j

 100 continue

Try it!

- Create a do loop to prompt the user five times for a surface pressure

- After all five have been read, compute an average surface pressure and print to the screenÂ
