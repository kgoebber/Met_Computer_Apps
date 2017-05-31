## Compound Logical Expressions

There might be times when there are multiple conditions that you are needing to asses and determine its truth value. If there were two conditions that both needed to be True we need A *and* B. For example, earning a B+ occurs when your grade is less than 90 and greater than or equal to 87.
```fortran
(grade >= 87) .AND. (grade < 90)
```
In the above logical expression, there is a comparison of two logical values. Both `(grade >= 87)` and `(grade < 90)` will have a value of True or False, but the whole statement will only be True if *both* statements are True (see table below).

Alternatively, we may need only one of two (or more) conditions to be True, therefore we would write A *or* B. For example, there are multiple threats for severe weather, but any one of them occurring would lead to a severe thunderstorm.
```fortran
(wind >= 50) .OR. (hail >= 1)
```
The above logical expression could be True if either the wind was greater than or equal to 50 knots or the hail size was greater than or equal to 1 inch.

The full list of the compound logical operators in Fortran and their formal definitions.

| **Logical Operator** | **Logical Expression** | **Definition** |
| --- | --- | --- |
| .NOT. | .NOT. A | Is true if **A** is false and is false if **A** is true |
| .AND. | A .AND. B | Conjunction of **A** and **B** : Is true if both **A** and **B** are true; false otherwise |
| .OR. | A .OR. B | Disjunction of **A** and **B** : Is true if **A** or **B** or both are true; false otherwise |
| .EQV. | A .EQV. B | Equivalence of **A** and **B** : Is true if both **A** and **B** are true or false; false otherwise |
| .NEQV. | A .NEQV. B | Nonequivalence of **A** and **B** : Is true if one of **A** or **B** is true and the other false; false otherwise |
