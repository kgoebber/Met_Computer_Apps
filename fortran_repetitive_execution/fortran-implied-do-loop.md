## Implied Do Loops

An implied do loop is a loop contained within parentheses that doesn't contain a do or end do statement (hence the whole implied terminology). This is an exceedingly useful tool, especially in reading data from a file that is in a table-like format.

### Structure

```fortran
(name, counter=initial, final)
```
or
```fortran
(name, counter=initial, final, step)
```
Be sure to enclose everything in parentheses that needs to be "in the loop"
