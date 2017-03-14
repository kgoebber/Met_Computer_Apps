## Creating, Compiling, and Running Code

### Write Program
Begin by opening up a terminal window on your machine and navigating to the folder you want to work in (e.g., met330). To make your first Fortran program you will need to create a new text file by using vi or gedit. For example, 
```linux
> vi helloworld.for
```
this will bring up a new blank file. Now add the following code by either typing it in or copying and pasting.

```fortran
      PROGRAM helloworld
ccccccccccccccccccccccccccccccccccccccccc
c Hello World Program
c by: <fill in name here>
ccccccccccccccccccccccccccccccccccccccccc

      print *, "Hello World!"
      
      END PROGRAM
```
This is a very basic program, but will allow us to illustrate how to compile and run a simple program. Once you have the program written in your new text file, save the file, but don't exit out of the file in case we need to make changes.

### Compile Program
Now open a second terminal window. We'll use this terminal window to compile and run our new script. On our system the compiler that we will use is gfortran, but we need an option to make our lives a little easier and not have to worry about how many columns we are using
```linux
gfortran -ffixed-line-length-0
```
but that would be a lot to write out every time. So I have created an alias and placed it in your .bashrc file so that you will only need to use the alias to compile `gf77`.

So to compile our helloworld.for program we would type the following at the command prompt
```linux
> gf77 -o helloworld.o helloworld.for
```
The `-o` option means we are specificing the name of our object code (the computer readable code) and we called it `helloworld.o`. There is no need to specify a suffix (e.g., `.o`), we do that for our human benefit only. We could have also named our object code `helloworld.exe` since it is our executable code.

### Compile Errors?
* If you get what looks like an error message after typing this pay attention to what it says.  
  * If it says: Notice: blah blah, that’s fine its just telling you something that it found as odd
  * If it says: Warning: blah, blah, some problems exist, but are not fatal
  * If it says: Error: blah, blah, you’ve got to fix the problem, your program won’t run successfully

### Run Program
Once you have successfully compiled your program and there are no Fatal compile errors, then you will be able to run your code. From the command prompt where you compiled your code you now should be able to type
```linux
> ./helloworld.o
```
The dot slash signifies the from the current working directory run the program name that comes after the slash. Since our program is only designed to output one line when it runs you should receive the following output.
```linux
 Hello World!
```
Congratulations!!! You have just successfully written, compiled, and run your first Fortran program!
