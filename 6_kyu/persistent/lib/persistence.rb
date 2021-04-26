def persistence(n)
  return 0 if n < 10

  multiplicative_persistence = 0
  integers_array = n.digits.reverse

  while true do
    multiplicative_sum = integers_array.inject(1){ |base, integer| base * integer}
    multiplicative_persistence += 1

    if multiplicative_sum < 10
      return multiplicative_persistence
    else
      return "not finished"
    end

  end
end
