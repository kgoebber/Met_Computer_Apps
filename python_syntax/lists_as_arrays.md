## Lists as Arrays

Native Python does not contain formal arrays, however, it has lists. A list is a collection of elements of _any_ type, whereas an array would be a collection of elements of the _same_ type. This makes lists in Python a bit more flexible than your typical array, but makes for more difficulty using them in a classic programming sense as an array. The details are not important here (hint: if your interested, google it!), but lists are described here and classic programming arrays are described in the section on NumPy.

Lists are defined using the square brackets and the following are three different examples of declaring lists in Python.

```python
my_num_list = [0,1,2,3,4]

my_char_list = ['zero','one','two','three','four']

my_mix_list = ['a','b','c',1,2,3]
```

The first and second list (`my_num_list` and `my_char_list`) are most like typical arrays, in that they contain elements all of the same type. Indexing is zero-based in Python, so to access a single value

```python
value1 = my_num_list[0]
print(value1)
```
Output:

```linux
0
```
**NOTE: This is different from Fortran, which is a one-based array system**

The third list above is mixed with characters and integers, which is okay for a list, but not for an array. This is what makes list very useful for a number of different Python tasks.

For more information on lists checkout this [link](http://www.openbookproject.net/books/bpp4awd/ch03.html).
