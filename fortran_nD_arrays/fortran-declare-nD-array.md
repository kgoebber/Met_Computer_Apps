## Declaring Multidimensional Arrays

Declaration of multidimensional arrays works the same as for [single dimension arrays](../fortran_1D_arrays/fortran-ddeclare-1d-array.md).

**Example #1**

Declaring the array directly with the maximum value for each dimension.

```fortran
real tmpf(5,6)
```

**Example #2**

Using the parameter statement to define the length of each dimension to be used multiple times

```fortran
integer itime, istn
parameter (itime=5, istn=6)
real tmpf(itime,istn), dwpf(itime,istn)
integer times(itime)
```
