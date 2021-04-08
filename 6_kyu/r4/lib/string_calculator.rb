def string_calculator(sum)
  if sum.split.length == 1
    [sum, sum.to_i]
  else
    chars = sum.split
    result = chars[0].to_i * chars[2].to_i
    [sum, result]
  end
end
