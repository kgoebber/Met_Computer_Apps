# An Introduction to Python Syntax

As we begin the transition to Python you’ll notice that some things are exactly the same as Fortran, but most are different, some drastically so. The main thing to remember is that no matter what language your are writing instructions for a computer in, the same computer logic goes into writing your code. For everything that will come in this document there is an equivalent Fortran process that we have already discussed. But before we transition to the new syntax, let’s take a step back and talk about one of the major differences between Fortran and Python.

So far this semester we have been using a scripting language that must be compiled in order to run. Fortran is but one example of a compiled language. We write source code (that we can read), then run that code through a compiler (e.g., gf77, gfortran, ifort) to produce object code that the computer can understand. It is this object code that we run to process our data files and produce some set output that we have defined in our code.

Python IS NOT COMPILED! It is what we term a "read" language. This means that the computer will directly complete the tasks that you have written in your Python program. There are a number of programming languages that fall in this category such as Perl, Ruby, and Java; we choose Python because of its robust toolset and ability to work with data arrays.

Python is also in a class of programming languages called "Object-Oriented Programming". Here is the definition of object-oriented programming from Webopedia.com

>"A type of programming in which programmers define not only the data type of a data structure, but also the types of operations (functions) that can be applied to the data structure. In this way, the data structure becomes an object that includes both data and functions. In addition, programmers can create relationships between one object and another. For example, objects can inherit characteristics from other objects.

>One of the principal advantages of object-oriented programming techniques over procedural programming techniques is that they enable programmers to create modules that do not need to be changed when a new type of object is added. A programmer can simply create a new object that inherits many of its features from existing objects. This makes object-oriented programs easier to modify."

We won’t be dealing too much with the objected-oriented nature of Python directly, but we will be using the fruits of its labors immensely in all of the modules that we will employ throughout the rest of the semester.

On to some of the nuts and bolts of Python compared to Fortran. We’ll begin with the need to declare all of your variables that we have been dealing with in Fortran – you DO NOT declare your variables in Python. This is both a positive and a negative. It’s great that you don’t need to remember to declare the type of your variable (integer, real, character, etc.), but you may not inherently know what your variable type is in Python. Basically Python will assume the type of what ever it is given. For example, if you assign an integer to a variable name, that variable type will be an integer. Python is good at letting you know when it expects a certain type and is getting something different, so don’t worry too much about this. Through writing code in Python you will begin to get the hang of it.

One important note is that when you are reading something in from a file the default will be to read it in as a string! There are ways to change that by using certain modules, but be aware that you may have to change the type and Python actually makes that relatively easy. The following commands can convert from one type to another:

```py
str(temp) 	– makes temp a string
int(temp) 	– makes temp an integer
float(temp) – makes temp a real (float32)
```
