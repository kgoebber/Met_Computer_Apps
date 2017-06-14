## Fortran Format Statements

Allows for greater control with output (and input)
* Can specify real, integer, character types
* The most common format code letters

### Format Special Characters
```text
- F; real numbers, fixed point format
- I; integer
- A; character
- X; horizontal skip (space)
```

### Real Descriptor
`rFw.d`
- `F` is the real descriptor
- `w` is width of the field
  - including the decimal point and minus sign
- `d` is number of digits to the right of the decimal point
- `r` is repetition value

### Integer Descriptor
`rIw.m`
- `I` is the integer descriptor
- `w` is width of the field
  - including the decimal point and minus sign
- `m` is minimum number of digits; will add zeros to front of number
- `r` is repetition value

### Character Descriptor
`rAw`
- `A` is the integer descriptor
- `w` is width of the field
  - including the decimal point and minus sign
- `r` is repetition value

### Space Descriptor
`nX`
- `n`  indicates the number of spaces to include
  - Basically, a repetition of spaces
