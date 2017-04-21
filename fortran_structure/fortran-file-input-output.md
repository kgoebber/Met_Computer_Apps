## File Input/Output

Instead of commandline input, a program can read input from a file and/or send output to a file.

### The OPEN Statement
Basic format for opening a file for reading or writing:
```fortran
OPEN(UNIT=number, FILE=file-name, STATUS=status)
```
* ```UNIT``` is a numeric value to reference this file (handle)
 * Number is any positive integer (don’t use 5 or 6)
 * used to refer to the file in the read or write statement instead of using the star (\*)

 ```fortran
 OPEN(UNIT=12,…)

 READ(12,*) ivalue
 ```

* ```FILE``` is the filename designated through a relative or absolute path that is to be read/write
 * give the file-name in single quotes
 * or give a character variable assigned to the file-name

```fortran
OPEN(UNIT=12,FILE=‘/home/kgoebber/GRADES.DAT’,…)

READ(12,*) grades(1), grades(2), grades(3)
```
As long as all the grades were on the same line in the file

* ```Status``` tells us something about the file (and potentially what we can do with the file)
 * a new file has a status of ‘NEW’
   * never before created; can only be used once; don’t use this file status
 * an old file has a status of ‘OLD’
   * when you know a file has been created or exists
 * The most useful is status of ‘UNKNOWN’
   * when you aren’t sure; will create new or overwrite old
 * More important for WRITE statements than read statements

### The Close Statement
It is good coding practice to close the file that you are reading from or writing to once the program is done completing the read/write. This has a couple of benefits in that is frees up the unit number to be used elsewhere in the program and additionally frees up computer memory.

```fortran
close(unit=#)
  or
close(#)
```

### Writing to a file
* Works very similarly to reading from a file
* Must first “OPEN” the file to write to it

`OPEN(UNIT=number,FILE=file-name,STATUS=status)`

* Here the status is critical
 * Status of ‘Old’ or ‘Unknown’ will overwrite a file, while ‘new’ will not

`WRITE(20,*) mean`
