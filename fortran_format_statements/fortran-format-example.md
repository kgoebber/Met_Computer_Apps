## More Format Statement Examples

### Example `F` Descriptor
Example Code:
```fortran
      x = 0.025
      write(*,*) 'x=', x

 110  format (A,F5.3)
      write(*,110) 'x=', x
```
Code output:
```fortran
x= 		0.0250000
x=0.025
```
The first write statement is the default output - not too nice. The second is with a format statement to better control how the real number gets printed to the screen - much nicer!

### Example `I` Descriptor
Example Code:
```fortran
      temp= -10
      iday = 30
      iyear = 3

 119  format(i3,i3,i2)
      write(*,119) temp, iday, iyear
```
- Other acceptable format statements:
```fortran
 119  format(2(i3),i2)
 119  format(i3,x,i2,i2)
 119  format(i3,i3,i2.2)
```

Code Output:
```fortran
-10 30 3
```

### Example `A` Descriptor
More characters than w
 - Only the leftmost characters displayed

```fortran
		  name = ‘Kevin’
		  write(10,100) name
 100  format(A3)
```

Code Output:
```fortran
Kev
```
