## Fortran Program Elements

Fortran is not a free-form language (especially Fortran 77, which is what is being used here) and has some *very* script rules for how source code is written. This largely stems from the history of Fortran and the limited to store information locally on a computer. As a result, early coding utilized punch cards that contained exactly one line of code per card (see example below). As a result, there were only a limited number of spaces available on a line (e.g., 72, 80) and the beginning of each line has reserved functionality, which is described below. You can even create your own punch cards [today](http://www.masswerk.at/keypunch/) and experience what it was like for programmers of yore...just don't drop your box of cards!

<!-- ![alt](https://upload.wikimedia.org/wikipedia/commons/5/58/FortranCardPROJ039.agr.jpg) -->
<img src="https://upload.wikimedia.org/wikipedia/commons/5/58/FortranCardPROJ039.agr.jpg" width="500"><br>
*Example of a Fortran Punch card from Wikipedia.com*

## Column Structure

The first few columns of a Fortran 77 program are reserved for specific functionality

| Column Number | What you can do...|
|---------------|-------------------|
| Col. 1   | Blank, or a !, c, or * to indicate a comment (non-executable) |
| Col. 1-5 | Statement line number |
| Col. 6   | Line continuation (often plus sign, +, is used) |
| Col. 7-140 | Statements (variable assignment, calculations, etc.) |

This will take some time to get comfortable with, and there will be plenty of time to practice! Below is an example of a simple Fortran program written on a grid to demonstrate the different rows and columns with the first six columns reserved according to the specifications in the table above. Any line that contains an appropriate comment character (e.g., !), the whole line becomes a comment and you can write yourself notes about what is going on in the program. All other lines begin at the seventh column.

<!-- ![alt](https://github.com/kgoebber/Met_Computer_Apps/blob/master/fortran_structure/example_Fortran_code.png)-->

<img src="https://raw.githubusercontent.com/kgoebber/Met_Computer_Apps/master/fortran_structure/example_Fortran_code.png" width=750><br>

Here is another example and this one uses the continuation line in the middle of the temperature conversion equation.

```fortran
      PROGRAM tmpc2tmpk
!cccccccccccccccccccccccccc
! A program to convert tmpc
! to tmpk
!ccccccccccccccccccccccccccc
      implicit none
      real tc, tk

      tc = 273.15 +
     + tk
! The sixth column is a line continuation
      print*, tk
      END PROGRAM
```

## Program Elements

As you may have noticed, there is a logic to the order of doing things in our simple program. We must always begin with the program name on the first line. Then comes our comment block with critical information about what the program does, who wrote it, and whether there have been any modifications. Next comes the variable declaration (telling the program what variables are going to be used and what their type is). Next comes the meat of the code where we have it do what we want (e.g., define a temperature and convert it) and give some form of output. Finally, we must have an end statement (END or END PROGRAM).

### Summary of Program Elements
* PROGRAM statement must go first!
  * and it must start in the seventh space (column)
* Comment Block
  * Next should come a comment block that contains important information about what the program does, who wrote it, the date, and for this class, the honor code.
* Declare Variable Types
  * Start with implicit NONE to make sure we don’t accidentally miss declaring a variable
  * Define all variables to be reals or integers
  * Again, must start at or after column 7!
* Assign Variables
  * Assign values to our variables that we declared starting at or after line 7 (comments can start anywhere after column 1)
* Add calculations and Output
  * Use variables to write a few mathematical equations
* Last line
  * Need to have an END statement at the end of the program
