### Importing Modules
The method to expand Python's functionality in any program through the use of modules begins with the `import` statement and it is good coding practice to import all needed modules at the beginning of a program. The basic import statement works as follows,
```python
import numpy
```

NumPy methods would then be available by using the name of the module (numpy) then using a period (.) and then the name of the function/method that is needed. For example, to access the sum function on an array called 'temps' from NumPy it would be accessed by
```python
numpy.sum(temps)
```

Another way to import a module is to give it a short name,
```python
import numpy as np

np.sum(temps)
```
In this way there is less typing and will make code more readable. There are common short names that get utilized within the community. For example, the most common modules that will be utilized in this course are NumPy, Matplotlib, and Xarray, which commonly get imported as,
```python
import numpy as np
import matplotlib as plt
import xarray as xr
```
