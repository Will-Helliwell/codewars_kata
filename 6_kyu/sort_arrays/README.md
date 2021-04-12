# Spec

| Input | Output |
| --- | --- |

| ["a"]| ["a"]|
| ["b"]| ["b"]|

| ["a", "b", "c"]| ["a", "b", "c"]|
| ["my", "name", "will"]| ["my", "name", "will"]|

| ["z", "y", "x"]| ["x", "y", "z"]|
| ["zoo", "is", "closed"]| ["closed", "is", "zoo"]|

| ["A", "b", "c"]| ["A", "b", "c"]|
| ["my", "Name", "will"]| ["my", "Name", "will"]|
| ["Zoo", "Is", "closed"]| ["closed", "Is", "Zoo"]|




| [""]| [""]|
| [] | [] |
| non-array | ArgumentError |
| array containing non-strings | ArgumentError |
