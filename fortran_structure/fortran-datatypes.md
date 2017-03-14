## Fortran Data Types and Defining Variables

In order for a Fortran compiler to know how to convert your source code into object code, it needs to know what type of variables you have. Is the variable a number? If so, is it just an integer or is it real (does it have decimal values)? Or is the variable a logic value (i.e., True or False)? While it may seem cumbersome to have to define a varaiables type, it is always useful to the programmer to know and tell the program what the data type of a variable should be.

### Data Types

The first major part of any Fortran program is the defining of variables. There are a number of different data types that can be used in a Fortran program, the most common are integer, real, and character.

| Data Types | Example Values |
| :---: | :---: |
| integer | 1, 3, 5, 7, 9 |
| real (single precision) | 1.5, 5.3, 6.817845, 99.9 |
| double precision | 6.81784590374815 |
| complex | 3 + 6i |
| character (string) | tmpc |
| logical | true or false |

A single precision real number is a decimal value with 6-7 values after the decimal point, whereas a double precision real number is a decimal value with 14 to 15 values after the decimal point. The main difference being how much memory is available to store the information. The more memory you allocate means keeping a larger number of digits and increased "precision".

### Defining Variables

In Fortran the best practice is to declare the type of each variable before you use it
```fortran
      integer  i, j, k
      real  sum, avg
      character*5  name
      logical  pass
```
Above the program defines three integer values (i, j, k), two real values (sum and avg), one character value with length 5 (name), and a logical variable (pass). If we were to use a variable that we haven't defined (e.g., temp) Fortran was go aheard and assume an implicit type based on the first letter of the variable.

* Implicit Data Types
  * Variables beginning with I,J,K,L,M, or N are implied integers
  * Variables beginning with A-H or O-Z are implied reals

So our variable `temp` would have an implicit type of real based on the implicit data types above. This is not good practice and you should always define ALL variables used in Fortran. A way to insure that you do define all of your variables is to declare that you want no implicit variables with a declaration of `implicit none`.
```fortran
      implicit none
      integer  i, j, k
      real  sum, avg
      character*5  name
      logical  pass
```
The above variable definitions will only allow for those specific variables. If another variable was added somewhere in the code that was not defined it would yield a compliation error that says that variable (e.g., temp) has no implicity type. For example,
```
Error: Symbol ‘temp’ at (1) has no IMPLICIT type
```
and you would need to add a definition of that variable if in fact you want to use it within your program.
