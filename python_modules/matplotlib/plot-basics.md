### Constructing a Figure

Making any plot with Matplotlib all starts with the idea that you are making a "figure". A figure contains the following elements
* plot
* title
* axis labels
* legends
* colorbar

All figures need to begin with [`plt.figure()`](https://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.figure), which creates the figure instance. Often this instance is given a handle `fig = plt.figure()`. The most common things to do with this function is the define a figure number and the figure size. For example, to create a figure with figure \#1 and an 10x8 size the following command would be used: `fig = plt.figure(1, figsize=(10,8))`.

It is important to add a title to the figure with [`plt.title('Your Title Here')`](https://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.title). The title is either a string or string object (variable). In addition it is important to label axes appropriately and can be done using [`plt.xlabel('string here')`](https://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.xlabel) and [`plt.ylabel('string here too')`](https://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.ylabel)

If appropriate legends and colorbars can be added to figures with [`plt.legend()`](https://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.legend) and [`plt.colorbar()`](https://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.colorbar), respectively.

In Jupyter Notebook it is also common to show your figure and can be done with the following function `plt.show()`.

To save a figure [`plt.savefig(<figname>)`](https://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.savefig), where `<figname>` is an absolute or relative path with the name of the figure. The most common figure type is a `.png` image.

Matplotlib also provides a nice [figure](https://matplotlib.org/mpl_examples/showcase/anatomy.png) that describes many of the different elements that you can set and is reproduced below.
![Anatomy of a Figure](https://matplotlib.org/mpl_examples/showcase/anatomy.png)
