## Write/Read Format Statements

Format statements can be used for formatted very nice output, whether to the screen or a file, or to aid in reading data from a file. Without a specified format statement, Fortran will assume a format that will keep many extra digits in real numbers and appear to add excess spaces before and/or after numbers. So a format statement can make clean and clear output a reality.

### Write Format Statement Example
Desired output:
`The temperature is 86.8 F`

Can be achieved with the following format statement

```fortran
 102   format(A, F4.1, A)
       print 102, 'The temperature is ',tmpf,' F'
```

or

```fortran
 103   format(A19, F4.1, A2)
       write(*,103) 'The temperature is ',tmpf,' F'
```


### Read Format Statement Example
* Same as write formats, with Real, Integer and Character Descriptors
* Input file “specifies” the format

* Tabular text data is a common format to read
* Constructing Read Formats

**Example Text File**
```text
         1         2         3         4         5         6         7
1234567890123456789012345678901234567890123456789012345678901234567890123456
YEAR   JAN   FEB   MAR   APR   MAY   JUN   JUL   AUG   SEP   OCT   NOV   DEC    
1951   2.5   1.5  -0.2  -0.5  -1.1   0.3  -1.7  -0.4  -1.8  -1.6  -1.3  -1.2
1952  -1.5  -1.0   0.9  -0.4   1.2   1.2   0.8   0.1  -0.4   0.6   0.0  -2.0
1953   0.5  -0.8  -0.3   0.3  -2.8   0.2   0.0  -2.0  -2.1   0.1  -0.5  -0.8
1954   1.1  -0.5   0.4   1.1   0.8   0.2   0.7   1.8   0.3   0.4   0.2   2.3
1955  -0.9   3.1   1.1  -0.2   1.7   2.2   2.6   2.4   2.2   2.5   2.0   1.6
1956   2.2   2.7   2.2   1.5   2.3   1.8   1.8   2.0   0.1   2.9   0.2   1.8
1957   1.0  -0.1   0.3   0.4  -1.1   0.3   0.4  -0.8  -1.5   0.1  -1.6  -0.5
1958  -3.1  -0.8   0.4   0.6  -0.8   0.5   0.7   1.5  -0.5   0.1  -0.7  -1.0
1959  -1.5  -2.3   2.1   0.7   0.8  -0.2  -0.4  -0.2   0.0   0.8   1.5   1.5
1960   0.2   0.2   1.7   1.3   0.9   0.2   0.8   1.3   1.1   0.2   0.9   1.3
```

**Read Format for SOI**
```fortran
 101  format(i4,12(f6.1))
 101  format(i4,12(x,f5.1))
 101  format(i4,f6.1,f6.1,f6.1,f6.1,f6.1,f6.1,f6.1,
     +       f6.1,f6.1,f6.1,f6.1,f6.1)
```

### Example Read Program
The following program will read in from a file with unit number '12' (same data as in example text file above) and with the format statement (102) we can get rid of the implied do loop for reading table-like data from a file!

```fortran
       PROGRAM SOI
! Do Loop Read Statement
       integer iyear(10)
       real soi(10,12)

       open(unit=12,...)

120    format(i4,12f6.1)

       read(12,*)
       do i=1,10
          read(12,120) iyear(i), soi(i,:)
       end do
```
