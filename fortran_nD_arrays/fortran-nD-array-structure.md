## Multi-dimensional Arrays

A multidimensional array is a collection of related data, stored under a single variable name, that can have up to seven dimensions. It's hard to think about what a 7D array would entail, but there are some good examples for conceptualizing multi-dimensional arrays.
* **2D** - think table: latitude by longitude; height by time; stations by time
* **3D** - think cube: lat by lon by height
* **4D** - think cube in time: lat by lon by height by time
* **5D** - think cubes in time: lat by lon by height by parameter by time

Most meteorological applications will use arrays of the one to four dimensional variety.

Here is an example of a 2D array (table-like) that one might commonly encounter with temperature data for six different stations with five observations for each station. The initial row is a header line, followed by five rows containing data for different times. There are a total of seven columns, one for the times and then six different stations.

<img src="https://raw.githubusercontent.com/kgoebber/Met_Computer_Apps/master/fortran_nD_arrays/2D_array_example.png" width=750><br>
