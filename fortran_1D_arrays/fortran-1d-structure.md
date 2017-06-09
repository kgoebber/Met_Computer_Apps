## One-Dimensional Arrays

A typical variable stores a single value that can be used throughout a program. The variable can be reassigned, recomputed, but there will always be just a single value associated with it. For example, we may be monitoring the temperatures at five different locations and we could have five separate variables to keep track of them, but since they are all temperatures, we could construct an array to hold those five values under a single name that has multiple addresses.

Why is it important to be able to store multiple values under a single name? Let's imagine what that would mean for a numerical weather prediction model. A regional model might have grid points every 12 km in the horizontal spanning a domain of 1200 x 1200 km, which means we have 100 x 100 grid points on each of 40 vertical levels. If each temperature had its own variable then we would have to account for

  `100*100*40 = 400 000`

That would be 400,000 different variables for just the temperature values over the whole domain. Yikes!

With an array, we can hold all of those values under the same name and just give them different addresses depending on where they are within the grid.        

For one-dimensional (1D) arrays we can think of it like a typical city street. If there are four homes on Washington Street, each home contains the same street name, just with a different address indicating a different part of the street. For example,
- 2235 Washington
- 2240 Washington
- 2245 Washington
- 2250 Washington

The addresses of an array are simpler that street addresses as they are always sequential! For example, an array containing four temperatures could be defined with variable name `tmpf`
- Array Address \#1: `tmpf(1)`
- Array Address \#2: `tmpf(2)`
- Array Address \#3: `tmpf(3)`
- Array Address \#4: `tmpf(4)`

One-dimensional Array (of size 4)

```fortran
        tmpf(1) = 28.6

        tmpf(2) = 30.5

        tmpf(3) = -10.3

        tmpf(4) = 0.2
```
Notice: same name each time, but with varying addresses

A 1D array can also be defined by making a list. For example,

```fortran
tmpf = (/28.6, 30.5, -10.3, 0.2/)
```

This is equivalent to specifying them separately with each unique address. The key is to have the list within the parentheses and a forward slash. The array can be accessed and used in any normal fashion, including being modified by another part of the code.
