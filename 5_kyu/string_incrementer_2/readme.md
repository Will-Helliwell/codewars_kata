# Spec

- If the string does not end with a number, the number 1 should be appended to the new string.
- If the string already ends with a number, the number should be incremented by 1.

| Input | Output |
|---|---|
|"foo"|"foo1"|
|""|"1"|
|"foo1"|"foo2"|
|"bar1"|"bar2"|
|"foo13742234"|"foo13742235"|
|"bar324879"|"bar324880"|
|"123foo1"|"123foo2"|
