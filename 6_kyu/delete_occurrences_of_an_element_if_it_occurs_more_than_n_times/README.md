# Spec

- Given an array of numbers, it removes duplicates (leaving the first instance only)
- Default is 1, but user can specify a 2nd argument --> leaves the first n instances

| Input | Output |
| --- | ---|
|[]|[]|
|[1]|[1]|
|[1,2,3]|[1,2,3]|
|[1,1]|[1]|
|[1,1,2,2]|[1,2]|
|[3,4,3,4]|[3,4]|

|[1], 2|[1]|
|[1,1], 2|[1,1]|
|[1, 1, 1], 2|[1, 1]|
|[1, 1, 1, 2, 2, 2], 2|[1, 1, 2, 2]|
|[3, 4, 5, 5, 4, 3, 3, 4, 5], 2|[3, 4, 5, 5, 4, 3]|


|"hi"|Error - input should be an array|
