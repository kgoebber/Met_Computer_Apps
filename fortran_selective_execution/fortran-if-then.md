## IF/THEN Statements

When programming, there will be many times when you want to only do certain commands under certain conditions. For example, if we only wanted to perform certain tasks between 0-29 min of an hour and a different set of tasks between 30-59 min of an hour, we will need a programatic way to allow both to happen, based on the computer time.

### Simple IF Statement

The IF Statement uses a logical expression to determine whether to perform the tasks that are contained within the IF. Recall that the "value" of an logical expression can be **True** or **False**, therefore, only when the logical expression is **True** will it perform the tasks within the statement. In Fortran the following is an example of the structure of a simple IF statement.

```fortran
IF (logical-expression) THEN

   statement sequence

END IF
```

Here is an example of an IF statement in Fortran. Remember, the code sequence in the IF Statement only gets executed if the statement is true; otherwise just moves on
```fortran
minute = 10
hour = 18
IF (minute .LT. 15) THEN

   hour = hour - 1

END IF
```
**Question:** In the above code, what is the value of the variable `hour` after the code is executed? How do you know?

**Answer:** The variable `hour` will be 17, because the minute value is less than 15, which makes the logical statement true. Thus the code within the IF statement is executed and subtracts one from the hour.

### Complex IF Statements
There might be times when there are a number of conditions that you want to test for and do certain things as a result in your code. In this circumstance you will want to use a combination of IF, ELSE IF, ELSE statements. The structure of the complex IF statements in Fortran are as follows.

```fortran
IF (logical-expression-1) THEN

   statement sequence

ELSE IF (logical-expression-2) THEN

   statement sequence

ELSE

   statement sequence

END IF
```
The execution of this code is sequential and will **only** perform the first statement that is **True**. For example, if `logical-expression-1` is True, then your program would execute the statement sequence within that part of the IF statement and continue at the END IF without testing `logical-expression-2` or completing the tasks after ELSE. So the only time that the statement sequence after the ELSE command will be executed is if *both* `logical-statement-1` and `logical-statement-2` are **False**.

Selective Control helps to refine problem solving to allow one program to do different things depending on some condition. At the same time, our program code is still executed in sequential order.

NOTE: Never, EVER use a GOTO command within any Fortran code. This method was available in older Fortran (read Fortran 77), but is not good coding practice to use. One could easily create unreadable "spaghetti" code.
