## Objected Oriented Programming

If a variable is a string, list, or tuple, then it is more than just a variable, it is something we call an _object_. This means that not only does the variable name hold a value or set of values, but also has associated _methods_. Methods are things that can be done to an object. For example, since lists are mutable objects, something can be added (appended) to a list with the append method.

```python
temps = [45,67,34,55,72]
print("Original List")
print(temps)
temps.append(82)
print("Appended List")
print(temps)
```
Output:

```linux
Original List
[45,67,34,55,72]
Appended List
[45,67,34,55,72,82]
```

Depending on the object, there are different methods that are available. The table below outlines some methods associated with strings, lists, and tuples.

| List  | Tuple | String |
|-------|-------|--------|
|append |count  |capitalize|
|clear  |index  |casefold|
|copy   |       |center|
|count  |       |count|
|extend |       |encode|
|index  |       |endswith|
|insert |       |expandtabs|
|pop    |       |find|
|remove |       |format|
|reverse|       |format_map|

The method gets applied to the variable and comes after a period.

```python
names = ['Kevin','Bart','Teresa','Adam','Craig']
print(names.count('David'))
names.append('David')
print(names)
print(names.count('David'))
```

In the above example, two list methods are used on the variable `names`. The method is attached to the variable with the period. The output of the above code yields,
```linux
0
['Kevin', 'Bart', 'Teresa', 'Adam', 'Craig', 'David']
1
```

For more information about methods in base Python, please refer to this [link](http://www.openbookproject.net/books/bpp4awd/ch03.html).

Python Docs for [String Methods](https://docs.python.org/3/library/stdtypes.html#string-methods)

Python Docs for [List Methods](https://docs.python.org/3/library/stdtypes.html#mutable-sequence-types)
