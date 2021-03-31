# Megasoft Weird - Wordprocessor

# Spec

- Spell-checker
- Input = sentence (string)
- Output = same sentence with incorrect words highlighted (tilde either side of each word)
- Dictionary not yet built, just build a small one for prototype (any format)

- Single method, takes 2 arguments:
- = spell_check(string, dictionary_array)

Functions:
- Highlights mispelled words with tildes
- Empty string returns empty string
- Non-string raises an error
- It is case-insensitive



dictionary = ["the", "dog", "is", "big"]

| Input | Output |
| ----- | -----  |
|"the", dictionary|"the"|
|"hello", dictionary|"~hello~"|

|"the dog", dictionary|"the dog"|
|"hello world", dictionary|"~hello~ ~world~"|
|"hello big dog", dictionary|"~hello~ big dog"|

|"The", dictionary|"The"|
|"hellO", dictionary|"hellO"|
|"Big Cat", dictionary|"Big ~Cat~"|

|"", dictionary|""|
