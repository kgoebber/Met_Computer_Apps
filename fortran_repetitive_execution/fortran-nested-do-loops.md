### Nested do loops

There will be times when you will need to loop over more than one variable, which Fortran easily allows for through the nesting of looping functions. In the case of nested loops it becomes even more critical to properly indent your code to easily determine what is happening in the code!

- Nested do loop example

```fortran
       do 100 iyear=2000, 2002

           do 200 j= 2,6

              print *, 'Year = ', iyear, 'Month = ', j

 200       continue

           print *, ''
           print *, 'Out of INNER Loop'
           print *, 'Year = ', iyear, 'Month = ', j
           print *, ''

 100   continue
       print *, 'Out of OUTER Loop'
```
The output from the above code should be

```fortran
Year = 2000   Month = 2
Year = 2000   Month = 3
Year = 2000   Month = 4
Year = 2000   Month = 5
Year = 2000   Month = 6

Out of INNER Loop
Year = 2000   Month = 7

Year = 2001   Month = 2
Year = 2001   Month = 3
Year = 2001   Month = 4
Year = 2001   Month = 5
Year = 2001   Month = 6

Out of INNER Loop
Year = 2001   Month = 7

Year = 2002   Month = 2
Year = 2002   Month = 3
Year = 2002   Month = 4
Year = 2002   Month = 5
Year = 2002   Month = 6

Out of INNER Loop
Year = 2002   Month = 7

Out of OUTER Loop
```
