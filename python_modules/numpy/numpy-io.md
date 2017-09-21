### NumPy Input/Output

There are two useful input functions that make it easy to read ascii text (normal text file) data within NumPy, [`loadtxt()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.loadtxt.html#numpy.loadtxt) and [`genfromtxt()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.genfromtxt.html#numpy-genfromtxt). The two functions are very similar and the only difference comes in if you have missing data, in which case you would need to use `genfromtxt()`. The best cases to use these functions is with a file that contains tabular style data that is all separated by a delimiter (i.e., white space, comma). If there is not any a common delimiter, there are other methods that can be employed ([Python I/O](https://docs.scipy.org/doc/numpy/reference/routines.io.html)).

Assuming you have a file that is appropriate to use, there are a number of keyword arguments that can be added to either function to aid in getting the data input in the correct format, to one or more variables.

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
print(data)
```

Output:
```linux
[[ 34.  56.  78.  91.]
 [ 12.  23.  33.  51.]
 [ 20.  39.  48.  57.]]
```

The data is input into the program by the `loadtxt()` function from NumPy as a 2D array of real values and has the same row/column configuration.

Saving data to a text file is also pretty simple ([`savetxt()`](https://docs.scipy.org/doc/numpy/reference/generated/numpy.savetxt.html#numpy.savetxt)) and just involves naming the output file and giving the function the 1D or 2D array that you wish to save to the file.

```python
np.savetxt('output_file.txt', data)
```

In the above example, instead of specifying the file name as a separate variable, it was just placed as a string where it needed to go in the function.
