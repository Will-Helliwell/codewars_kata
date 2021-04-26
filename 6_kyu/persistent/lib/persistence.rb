def persistence(n)
  return 0 if n < 10

  multiplicative_persistence = 0
  integers_array = n.digits.reverse

  while true do
    multiplicative_sum = multiply_integers(integers_array)
    multiplicative_persistence += 1

    if multiplicative_sum < 10
      return multiplicative_persistence
    else
      return "not finished"
    end

  end
end


private
def multiply_integers(array)
  array.inject(1){ |base, integer| base * integer}
end