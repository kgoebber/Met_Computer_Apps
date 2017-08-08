## NumPy

In terms of using Python for scientific work, [NumPy](https://docs.scipy.org/doc/numpy/user/whatisnumpy.html) (Numerical Python) is one of the most important modules to effectively and efficiently complete tasks. So what is NumPy exactly?
> NumPy is the fundamental package for scientific computing in Python. It is a Python library that provides a multidimensional array object, various derived objects (such as masked arrays and matrices), and an assortment of routines for fast operations on arrays, including mathematical, logical, shape manipulation, sorting, selecting, I/O, discrete Fourier transforms, basic linear algebra, basic statistical operations, random simulation and much more. (SciPy/NumPy)

Since native Python does not contain a true array object, NumPy is the module that expands the capabilities of the root Python language with fast array methods. NumPy is a standard module and comes pre-packaged with both miniconda and anaconda distributions of Python.

To import NumPy the following is the most common method
```python
import numpy as np
```

Many modules that are used within the scientific Python stack depend on NumPy and if you use an automated read function the data will more likely than not be a NumPy array.
