Logical Expressions
-------------------

For a computer to accomplish this selection it evaluates the “Truth
Value” of a logical statement. Therefore, an expression will need to be
evaluated to determine if it is True or False. To begin here are the
common expression evaluators summarized in the table below.

+----------+-------------------------------+-----------------------+
| Symbol   | Meaning                       | Mathematical Symbol   |
+==========+===============================+=======================+
| .LT.     | Is less than                  | <                     |
+----------+-------------------------------+-----------------------+
| .GT.     | Is greater than               | >                     |
+----------+-------------------------------+-----------------------+
| .EQ.     | Is equal to                   | ==                    |
+----------+-------------------------------+-----------------------+
| .LE.     | Is less than or equal to      | <=                    |
+----------+-------------------------------+-----------------------+
| .GE.     | Is greater than or equal to   | >=                    |
+----------+-------------------------------+-----------------------+
| .NE.     | Is not equal to               | !=                    |
+----------+-------------------------------+-----------------------+

For example, say we had the following expression

.. code:: fortran

    5 < 3

Is the above statement (five is less than three) True or False?

**False!** Five is greater than three.

Remember that there is such a thing as a logical variable in Fortran, so
the above expression could be set to a variable.

.. code:: fortran

     PROGRAM logical_test

     implicit none
     integer x, y
     logical test
     x = 5
     y = 3

     test = x .LT. y

     print*, "The statement is ",test

     END PROGRAM

The above program will yield the following output.

``The statement is F``

Go ahead and test if for yourself. Copy the above code to a new Fortran
program, compile, and run it to see what you get. Change the logical
expression to get different results.

**Note**

``5 .LT. 5`` is False

``5 .LE. 5`` is True
