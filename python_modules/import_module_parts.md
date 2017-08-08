### Importing Parts of Modules

There will be times when only a function or two is needed from a particular module and can avoid the overhead of bringing in all of the modules functions. Again the import function is used,
```python
import cartopy.crs as ccrs
```

In the above, a particular function (`crs`; Coordinate Reference System) from the CartoPy library is being imported as the name `ccrs`, which is short for CartoPy Coordinate Reference System.
