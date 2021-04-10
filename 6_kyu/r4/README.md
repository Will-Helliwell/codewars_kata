# Spec

- Makes maths papers easier to read

String Calculator:
- Scans through maths paper and looks for sums
- Extracts these as strings
- Evaluates
- Spits out original sum string + evaluated result

Valid:
Number symbols 0-9 (maximum of 2) --> any number >= zero
Operators:
- *
- /
- +
- -

| Input | Output |
| --- | --- |
|"3"|["3", 3]|
|"5"|["5", 5]|
|"123"|["123", 123]|

| "3 * 2" | ["3 * 2", 6] |
| "10 * 20" | ["10 * 20", 200] |

| "3 + 2" | ["3 + 2", 5] |
| "9 / 3" | ["9 / 3", 3] |
| "7 - 4" | ["7 - 4", 3] |

| "500 / 5" | ["500 / 5", 100] |

|non-string|ArgumentError - "Input must be a string" |
|if no space| MathError - "Input must be a valid mathematical string separated by spaces"|
|""|["", 0]|
|non-sensical string| MathError - "Input must be a valid mathematical string separated by spaces"|
