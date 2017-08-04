## Definitions

There are often times that tasks might be repeated within programs (e.g., calculating radius, converting from one temperature to another, finding an average, making similar plots, etc.) and previously the code would have to be written multiple times in order to accomplish the tasks. There is nothing inherently wrong with this method, except for the fact that if any changes were desired, you would need to find every instance of that type of code and change them all. Instead of writing the same code multiple times these tasks can defined once and called any number of times within a program. Then there would only be one piece of code to modify if a change in code is desired at some future time.

In Fortran, these repeated tasks are called _functions_ or _subprograms_, in python they are called _definitions_. A simple example may be to calculate the area of a circle. Type the following into a file,

```python
def area(radius):

    area = 3.14159*radius**2.

    return area

print area(3)

print area(15)
```


Run the file. What do you get? What are the units?

Here is another another example using temperature conversions. Type the following into a file for converting temperatures in Fahrenheit to Celsius.

```python
def tmp2c(temp):

        tc = (5./9.)*(temp - 32)

        return tc

print tmp2c(68.)

tempf = 104.

print tmp2c(tempf)
```


In the above example, a function is defined to convert temperatures that are in Fahrenheit to Celsius and called it using two different types of input. For the first call we just put the number in the function (definition) call that we desire to convert, 68F. In the second instance we have defined a variable, tempf, and used that as our input for the function. Instead of writing out our temperature conversion equation multiple times, there is a single reference back to the same code to do our conversions. Thus, if a mistake was found in how calculation was performed, there would only be one part of the code to modify.
