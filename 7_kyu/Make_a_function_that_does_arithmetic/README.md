# Spec

- single function, 'arithmetic'

| Input | Output |
| --- | --- |

|5, 2, "add"|7|
|7, 3, "subtract"|4|
|10, 2, "divide"|5|
|3, 4, "multiply"|12|


|2 arguments| ArgumentError|
|Incorrect class arguments| ArgumentError|
|Invalid integer| ArgumentError |
|Divide by 0 | ArgumentError |

| 5.2, 2, "divide" | 2.6 |
