## Variable Assignment

To assign a variable a "value" (the value could be an integer, real, or imaginary number, as well as logical or character) and works similarly to how you would write something mathematically. For example, if we want a variable called `a` to equal 5, then the variable assignment is written as follows
```
a = 5
```
Or we can assign a variable (e.g., `area`) to be equal to an equation. For example, we may assign
```
area = length*width
```
which is an abstract equation that will take the values assigned to `length` and `width` and multiply them together to calculate the area. In order of this equation to be used in our program we would need to first assign values to length and width.

Another way to think of a variable is giving a value an alias in the computer code, so you can refer back to it later (or change its value, compute a new value, etc.).

Assigning character variables require you to know its length. For example, if we defined the variable `name` with
```fortran
CHARACTER*5 name
```
It will only store five characters when you go to assign the variable. So if we were to assign the value "kevin" to `name` we would retain all five letters, but if we were to try and assign "matthew" the variable value would only retain the first five characters and the actual variable value would be `matth`. For example, the following program

```fortran
      PROGRAM names
      
      implicit none
      character*5 name
      
      name = 'matthew'
      
      print*, "My name is ",name
      
      END PROGRAM
```
would yield the following output
```
My name is matth
```
