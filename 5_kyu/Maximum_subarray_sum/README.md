# Spec

all positive --> array sum
all negative or empty --> 0

[1,2,3,-1] --> 6
[-2,1,2,3] --> 6
[-2, 1, -3, 4, -1, 2, 1, -5, 4] --> 6
[-2, 1, -7, 4, -10, 2, 1, 5, 4] --> 12


non-array --> ArgumentError
array containing >0 non-integers --> ArgumentError
