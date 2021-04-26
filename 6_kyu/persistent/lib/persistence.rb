def persistence(n)
  return 0 if n < 10

  multiplicative_persistence = 0

  while true do
    integers_array = n.digits.reverse
    multiplicative_sum = multiply_integers(integers_array)
    multiplicative_persistence += 1

    if multiplicative_sum < 10
      return multiplicative_persistence
    else
      n = multiplicative_sum
    end

  end
end


private
def multiply_integers(array)
  array.inject(1){ |base, integer| base * integer}
end
