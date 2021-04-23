# Spec

nil --> []
[] --> []
[1] --> [1]
[1, 2, 3] --> [1, 2, 3]
[3, 2, 1] --> [1, 2, 3]
[1, 5, 2, 33, 3, 1] --> [1, 1, 2, 3, 5, 33]

non-array && non-nil --> ArgumentError "Expect array or nil"
