def persistence(n)
  return 0 if n < 10

  multiplicative_persistence = 0

  while true do
    integers_array = n.digits.reverse
    n = multiply_integers(integers_array)
    multiplicative_persistence += 1
    return multiplicative_persistence  if n < 10
  end
end


private
def multiply_integers(array)
  array.inject(1){ |base, integer| base * integer}
end
