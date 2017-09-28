### Slicing NumPy Arrays

Slicing arrays is the ability to extract elements (pieces) of the array to work with independently of the whole array. To do this you must use a combination of indexing to get the single value or subset array. In python, arrays are zero-based, which means indexing of numpy arrays will start with zero. Additionally, it is important to remember that ranges in Python are inclusive of the first number and exclusive of the second.

```python
import numpy as np

# Creates a 1D array from -100 to 100 with 21 even steps
data = np.linspace(-100,100,21)
print(data)
print(data.shape)
print()

# Let's take a slice of 5 value
print(data[5:10])

```

```linux
[-100.  -90.  -80.  -70.  -60.  -50.  -40.  -30.  -20.  -10.    0.   10.
   20.   30.   40.   50.   60.   70.   80.   90.  100.]
(21,)

[-50., -40., -30., -20., -10.]
```

In the above example, an array of shape `(21,)`, which means there are 21 elements in that 1D array. The example then printed out a slice (a portion) of the array (`data[5:10]`), which yielded give elements of the 21 available in the original array. The `5:10` is what will give the range of index values `[5,6,7,8,9]`, where the slice is inclusive of the first number (`5`) and exclusive of the second number (`10`).
