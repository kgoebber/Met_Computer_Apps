### Importing Parts of Modules

There will be times when only a function or two is needed from a particular module and can avoid the overhead of bringing in all of the modules functions. Again the import function is used,
```python
import cartopy.crs as ccrs
```

In the above, a particular function (`crs`; Coordinate Reference System) from the CartoPy library is being imported as the name `ccrs`, which is short for CartoPy Coordinate Reference System.

Similarly, the Matplotlib module has extensive functionality, but in general we only want to bring in a portion of that module. The common import statement is
```Python
import matplotlib.pyplot as plt
```

This allows us to bring in the main plotting library with a simple handle ('plt') that will make is easier to access and utilize its functionality in any program that we write.
