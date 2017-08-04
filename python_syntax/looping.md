## Do Loops – For Loops

There are similar small differences in the syntax of do loops in Python. First, they are actually **for** loops and unless told otherwise will begin with zero. This is a result of Python arrays being a zero-based system, as compared to Fortran, which is a one-based array system. Here is example code is a simple Python for loop with values of i from 0 to 9, which is very similar to the Fortran loop in [Do Loops Example 1](fortran_repetitive_execution/fortran-do-loops.md).

```python
for i in range(10):
  print(i)
```
Output:
```linux
0
1
2
3
4
5
6
7
8
9
```
Notice again how Python used the colon (:) at the end of the for loop line and when un-indented tells Python we are out of the loop.

The while loop is introduced below and works in the same ways as the [Fortran while loop](fortran_repetitive_execution/fortran-while-loops.md). This loop will continue going until the logical statement is no longer true. Be careful as you might create and infinite loop and your program will never ever, not in a million billion years, end.

```python
a = 5
b = 10
while (a < b):
  print(a)
  a = a + 1
```
