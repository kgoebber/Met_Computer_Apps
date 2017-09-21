### Some NumPy Basic Functions

There are a substantial number of functions available through NumPy, much too numerous to go through here. However, this section will highlight the use of a few simple functions and give links to the NumPy documentation for commonly used mathematical functions.

The following example illustrates computing an average from a 2D array, read in using a NumPy function.

input.txt:
```linux
34 56 78 91
12 23 33 51
20 39 48 57
```

Code:
```python
import numpy as np

filename = 'input.txt'
data = np.loadtxt(filename)
avg_data = np.average(data)
print(avg_data)
```

Output:
```linux
45.1666666667
```

Some Common Mathematical Operations:
* Average over all or parts of an array - [`average()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.average.html#numpy.average)
* Sum of the elements of an array -  [`sum()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.sum.html#numpy.sum)
* Square Root of all elements - [`sqrt()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.sqrt.html#numpy.sqrt)
* Maximum over an array - `max()` or [`amax`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.amax.html#numpy.amax)
* Minimum over an array - `min()` or [`amin()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.amin.html#numpy.amin)
* Standard deviation over all the elements of an array - [`std()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.std.html#numpy.std)
* Trigonometric Functions (expect angle in radians)
 * Sine Function [`sin()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.sin.html#numpy.sin)
 * Cosine Function - [`cos()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.cos.html#numpy.cos)
 * Tangent Function - [`tan()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.tan.html#numpy.tan)
* Change from Degrees (angle) to radians - [`deg2rad()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.deg2rad.html#numpy.deg2rad) or  [`radians()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.radians.html#numpy.radians)
