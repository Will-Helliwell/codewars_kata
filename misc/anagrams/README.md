# Spec

- Given two words, it returns true if they are anagrams
- Ignores capitalisation
- Ignores spaces

- "a", "a" --> true
- "a", "b" --> false
- "abc", "cba" --> true
- "abc", "def" --> false

- "", "" --> true
- "", "b" --> false
- non-string --> ArgumentError


- "a", "A" --> true
- "a dog", "o dag" --> true
