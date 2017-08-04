## Tuples

Tuples are similar to lists, but can't be changed ([immutable](https://docs.python.org/3/library/stdtypes.html#immutable-sequence-types)) after assignment. This has certain advantages, especially if there is something within the code that once defined should ever change as a part of the code! There are also no methods to add or remove elements, etc., which make them distinct from lists.

A tuple is defined by parentheses, for example,

```python
my_nums = (1,2,3,4)
```

and tuple elements can be retrieved in a similar way to lists with the appropriate index value.

```python
print(my_nums[3])
```
Output

```linux
4
```

Again, the indexing for tuples (which is the same as for lists) in Python is zero-based. The first index element is 0, the second is 1, the third is 2, etc. It may take a while to get used to this, but just try to remember the standard ten numbers are 0,1,2,3,4,5,6,7,8,9.

Python Docs for [Tuples](https://docs.python.org/3/library/stdtypes.html#tuples)
