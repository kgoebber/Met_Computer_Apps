## Reading Multidimensional Arrays

Here is a video that demonstrates what is happening during the reading of a 2D array from a file. A nested, [implied do loop](../fortran_repetitive_execution/fortran-implied-do-loop.md) is used to read the table-like array contained within the file.

### Reading 2D Arrays

Recall that each time a Fortran program encounters a `READ` statement, it moves to a new line, so in order to "read across" the table it is necessary to use an implied do loop (for the inner loop) to avoid having a repeated `READ` statement.

* Example data

|ORD|MDW|GYY|
|:---:|:---:|:---:|
|78|48|65|
|88|35|49|
|62|55|76|
|56|36|81|

* Example script to read into a two-dimensional array with an implied do loop
```fortran
        PROGRAM implieddo
        INTEGER row, col
        REAL TEMP(4,3)

        OPEN(UNIT=12,FILE='data.dat',STATUS='unknown')
  c skip first line header
        READ(12,*)

        DO row = 1,4
           READ(12,*) ,(TEMP(row,col), col=1,3)
        END DO

        PRINT *, TEMP

        end
```
* This reads 4 lines of data with 3 data values per line

### Video Example
[![2D Array Reading](http://img.youtube.com/vi/2mBjU2dWGeA/0.jpg)](https://www.youtube.com/watch?v=2mBjU2dWGeA)
