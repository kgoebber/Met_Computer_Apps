## Dictionaries

A dictionary is another way to store objects (data) within Python. They work on a `key:value` pair, allowing the programmer to access the values using a simple key that describes the value. Dictionaries are most often encountered when using read functions that contain more than one array of data. The dictionary can contain multiple arrays (maybe of temperatures) for different stations. The `key` would be the station ID (e.g., VPZ, MSP, ORD, OUN), which would allow access to those individual station temperatures.

Dictionaries are also quite useful when reading in self-describing datasets (such as netCDF files) as the dictionary can contain all of the information that is contained within those files within a single variable name. This is very powerful and is quite useful for data that is geo-referenced and the programmer will need to know more information to plot it on a map than can be contained in a single array.

Dictionaries can be defined in a number of [ways](https://docs.python.org/3/library/stdtypes.html#mapping-types-dict), but the most common is through use of the dictionary function (`dict()`) or the curly-q brackets ({}).

```python
mslp1 = dict(ord=1004,vpz=1005,mdw=1003,gyy=1006)
mslp2 = {'ord':1004,'vpz':1005,'mdw':1003,'gyy':1006}
print(mslp1 == mslp2)
print(mslp2['ord'])
```

Output:
```linux
True
1004
```

The above example illustrates that the two dictionaries (mslp1 and mslp2) are equivalent and the data is accessed through the use of the key. To get the mean sea level pressure for `ord` the variable name of the dictionary is used with the key in square brackets `mslp2['ord']`. Dictionaries, like lists, are mutable, meaning that the values can be changed through assignment.

Some [methods](https://docs.python.org/3/library/stdtypes.html#dict) associated with Dictionaries (`d = dict()`)
* d.keys()
* d.clear()
* d.copy()
* d.items()
* d.pop()
* d.values()
