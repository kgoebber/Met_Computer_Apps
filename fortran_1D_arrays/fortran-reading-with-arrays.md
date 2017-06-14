## Reading to Arrays

### Command Line Reading
Reading data into an array from the command line works similarly to that for a single value variable. The only difference is in adding the specific "address" within the array that the value is to be stored. For example,

```fortran
real grades(3)

print *, “Input three grades separated by commas”
read(*,*) grades(1), grades(2), grades(3)
```
A loop could also be employed to help for multiple values going into the same array and can be substantially more efficient. For example,

```fortran
real grades(3)

do i=1,3
   print *, “Input grade number ”, i
   read(*,*) grades(i)
enddo
```
In the above example there is no need to rewrite the variable name multiple times as the iteration from the do loop will change the address with each loop. This would be especially helpful if there were a large number of values being input (e.g., 25) where you would want to have to type our a variable name and address that many times.

### File Reading
Most likely a file is going to contain a number of values that might be best stored in an array. Again, here the most efficient and effective way to read in the data from the file is to use some form of looping. You will need to know how many elements are in a file to set the appropriate array size, then a regular do loop will work make quick work of reading in all of the values.

*Example File #1:* ```temps.dat```
```
45
78
65
42
```

**Do Loop File Example**
```fortran
real tmpf(4)
integer i

OPEN(unit=12,file='temps.dat',status='unknown')

do i=1,4
   read(12,*) tmpf(i)
enddo

end
```

### Video Example

Here is a video example explaining what is going on with the program when using a do loop to read in data from a file to one-dimensional array.

[![1D Array Reading](http://img.youtube.com/vi/cPA_8IyeEw4/0.jpg)](https://www.youtube.com/watch?v=ÂcPA_8IyeEw4)
