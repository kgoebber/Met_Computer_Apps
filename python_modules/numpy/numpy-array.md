### NumPy Arrays

The basis of NumPy is the array. There are a [number of ways](https://docs.scipy.org/doc/numpy/user/basics.creation.html#introduction) to obtain/create a NumPy array, but the most common is to either use a reader that will bring the data in as a NumPy array, or a simple conversion of a list/tuple to a NumPy array.

#### Conversion to NumPy Array
To convert a data object to a NumPy array requires the use of a the NumPy function `array()` and can be done as follows:

```python
import numpy as np

temps = [28, 25, 32, 36, 51]

temps_array = np.array(temps)
```

The original data object (`temps`) is a Python list (which is array-like) and is easily converted to a NumPy array and saved as a new variable name (`temps_array`). There is not a need to define a new variable, re-assigning the variable `temps` would also be acceptable.

#### Create a new NumPy Array
There are a couple of different methods/functions to create new NumPy arrays, including
```python
import numpy as np

# 1D Array of length 10 elements
array1 = np.arange(10)
print(array1)

# 2D Array (4 rows x 5 cols)- All values are zero (0)
array2 = np.zeros((4,5))
print(array2)

# 1D Array 21 equally spaced values between -5 and 5, inclusive
array3 = np.linspace(-5,5,21)
print(array3)
```

Output:
```linux
[0 1 2 3 4 5 6 7 8 9]
[[ 0.  0.  0.  0.  0.]
 [ 0.  0.  0.  0.  0.]
 [ 0.  0.  0.  0.  0.]
 [ 0.  0.  0.  0.  0.]]
[-5.  -4.5 -4.  -3.5 -3.  -2.5 -2.  -1.5 -1.  -0.5  0.   0.5  1.   1.5  2.
  2.5  3.   3.5  4.   4.5  5. ]
```
