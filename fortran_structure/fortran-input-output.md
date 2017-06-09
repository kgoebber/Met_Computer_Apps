## Input/Output (I/O)

While programs can be written that do not require any input, most of those are basic and don't solve a large variety of problems. Therefore, it is important to be able to have a simple method for allowing a program to bring in information at the run time of the program. This section will cover a simple method for reading from the commandline.

### List-directed I/O

The idea of list-directed input/output is that the programmer is able to allow the input to come from the commandline at the program runtime as opposed to specifying a variables value that can only be changed in the source code, which would then require the code to be recompiled every time you changed a value.

For example, suppose you have the following code to convert temperatures in Kelvin to degrees Celsius

```fortran
      PROGRAM tmpk2tmpc
!ccccccccccccccccccccccccccccccccccccccccccccccc
! A program to convert temperatures in Kelvin
! to Celsius
!ccccccccccccccccccccccccccccccccccccccccccccccc

      implicit none
      real tmpk, tmpc

      tmpk = 288

      tmpc = tmpk - 273.15

      print *, tmpc

      END PROGRAM
```

Once the above program is compiled it will only be able to convert the temperature of 288K to degrees Celsius. Only by going in and changing that value, then compiling, then running the program would you be able to convert a different value. This is wildly inefficient. Luckily, Fortran gives us an easy method for allowing us to read in a value when we execute the program. This requires a `read` statement.

* Fortran Read Statement

There are two ways to write the read statement
```fortran
read *, input_list
read(*,*) input_list
```
The `input_list` can be one or more variables that will be input from the commandline. Each read statement reads a single line of input for the number of variables in the list. The `*` is the character way of saying to the Fortran compiler to read from "standard input" or the commandline. A program that contains a `read(*,*)` statement when run will wait for input from the commanline before proceeding past that point in the program.
* reads a single value
```fortran
READ *, tc
```
* reads a series of four values separated by spaces or commas when entering them from the command line
```fortran
read(*,*) tc1, tc2, tc3, tc4
```
Our modified temperature conversion program using a read statement could be written as

```fortran
      PROGRAM tmpk2tmpc
!ccccccccccccccccccccccccccccccccccccccccccccccc
! A program to convert temperatures in Kelvin
! to Celsius
!ccccccccccccccccccccccccccccccccccccccccccccccc

      implicit none
      real tmpk, tmpc

!      tmpk = 288
      read(*,*) tmpk

      tmpc = tmpk - 273.15

      print *, tmpc

      END PROGRAM
```
Now the program allows the user to input a value when they run the program. So if the user wanted to convert five different temperatures there would be no need to re-compile the source code, the program would just be run five different times to yield the required output. Go ahead and copy the above program, compile it, then run it. Notice that when you run the program it just waits for your input. Type a value to have the program convert that temperature in Kelvin to degrees Celsius.

### Fortran Print Statement

You likely already noticed the method for simple file output that has been used a couple of times already, `print*`. There are two simple methods for displaying output to the screen ("standard output")

```fortran
		print *, list
		write(*,*) list
```		
Again the `*` is the character that allows the compiler to know that the output should go to the screen. So for our temperature conversion script the output is the temperature in degrees Celsius.


Since this type of input is "interactive" it’s good practice to prompt the user for the needed value, i.e., use a print statement before the read. Modify the temperature conversion code to include a print or write statement prior to the read to prompt the program user for the desired input.
