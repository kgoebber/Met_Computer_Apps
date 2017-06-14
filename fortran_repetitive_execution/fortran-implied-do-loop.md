## Implied Do Loops

An implied do loop is a loop contained within parentheses that doesn't contain a do or end do statement (hence the whole implied terminology). This is an exceedingly useful tool, especially in reading data from a file that is in a table-like format.

### Structure

```fortran
(name, counter=initial, final)
```
or
```fortran
(name, counter=initial, final, step)
```
Be sure to enclose everything in parentheses that needs to be "in the loop"

### Reading 2D Arrays

Recall that each time a Fortran program encounters a `READ` statement, it moves to a new line, so in order to "read across" the table it is necessary to use an implied do loop (for the inner loop) to avoid having a repeated `READ` statement.

* Example data

|ORD|MDW|GYY|
|:---:|:---:|:---:|
|78|48|65|
|88|35|49|
|62|55|76|
|56|36|81|

* Two dimensional array – implied do loop
```fortran
       PROGRAM

       REAL TEMP(4,3)

       OPEN(UNIT=12,FILE='data.dat',STATUS='unknown')
  c skip first line header
       READ(12,*)

       DO COL = 1,4
          READ(12,*) ,(TEMP(COL,ROW), row=1,3)
       END DO

       end
```
* This reads 4 lines of data
 * with 3 data values per line
