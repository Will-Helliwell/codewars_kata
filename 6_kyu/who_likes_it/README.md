# Who Likes It?

## Spec

Requirements:
- It returns the names of the person followed by 'likes this' for a single
- It returns the names of the people followed by 'like this' for a multiple
- 3 names
- 4+ names
- 0 names

|Input|Output|
|["Peter"]|"Peter likes this"|
|["Bob"]|"Bob likes this"|

|["Jacob", "Alex"]|"Jacob and Alex like this"|
|["Bob", "Kevin"]|"Bob and Kevin like this"|

|["Max", "John", "Mark"]|"Max, John and Mark like this"|
|["Bob", "Kevin", "Steve"]|"Bob, Kevin and Steve like this"|

|["Alex", "Jacob", "Mark", "Max"]|"Alex, Jacob and 2 others like this"|
|["Bob", "Kevin", "Steve", "Sarah"]|"Bob, Kevin and 2 others like this"|
|["Bob", "Kevin", "Steve", "Sarah", "Alice", "Gemma"]|"Bob, Kevin and 4 others like this"|

|[]|"no one likes this"|
|non-array|ArgumentError - expect a single array containing strings|
|non-array containing non-string|ArgumentError - expect a single array containing strings|
