## Fortran Code Programs

Since Fortran is a compiled langauge there are two components to any program, 1\) the source code and 2\) the object code. The source program is what you would think is the "real" program. That is because this is the human readable portion of our program...well...as human readable as any Fortran code can get! The source code contains the code that you have written that uses ASCII text \(i.e., letters and numbers\) that is written in a very particular format. For example, here is a "Hello World" script written in Fortran 77,

```fortran
       PROGRAM hello
       !ccccccccccccccccccccccccc
       ! Hello Work
       ! by: Kevin Goebbert
       !ccccccccccccccccccccccccc

       print*, "Hello World"

       END PROGRAM
```

A computer can't inherently do anything with this Fortran source code, it must be converted to something that the computer can work with \(i.e., binary code\). To accomplish this task we must employ a Fortran compiler to take this source code and convert it to object code.

There are a number of different compilers available \(some free, some which cost money\), but the most common, freely available Fortran compiler that is easily installed on Linux or Mac systems is the [GNU Fortran compiler](https://gcc.gnu.org/fortran/) \(gfortran\). This compiler offers support for a wide range of Fortran code, from legacy F77 to F95 and many of the 2003 and 2008 features. There are other Fortran compilers that you may have access to including [intel fortran](https://software.intel.com/en-us/fortran-compilers) \(ifort\) and [portland group](http://www.pgroup.com) \(e.g., pgf77, pfg90\). If you are developing sophisticated software \(e.g., Weather Research and Forecasting model\) you would likely benefit greatly from some of the tools offered with the enterprise compilters \(Intel, Portland Group\), but if you are just developing relatively simple code or compiling larger sophisticated programs, generally any compiler will do.

So what does the compiler do? It takes the human readable source code and converts it into a binary \(series of zeros and ones\) that the computer can interpret to accomplish the tasks that you designated in your program. Basically your running your source code through another program that converts it to another program. This has the benefit of allowing your compiled code to be run on another machine that has a similar set up without needing to compile the source code a second time. Additionally, the compiler will optimize your program for great runtime performance. There is more to and you can feel free to read more in ["FORTRAN 77 for Engineers and Scientists"](https://books.google.com/books/about/FORTRAN_77_for_Engineers_and_Scientists.html?id=e4Q_AQAAIAAJ) \(used copies available for cheap!\).

