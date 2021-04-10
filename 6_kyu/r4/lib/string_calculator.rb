def string_calculator(sum)
  chars = sum.split
  result = nil

  if chars.length == 1
    result = sum.to_i
  else
    result = calculate_sum(chars[0].to_i, chars[1], chars[2].to_i)
  end

  [sum, result]

end

private
def calculate_sum(int1, string, int2)
  if string == "*"
    int1 * int2
  else
    int1 + int2
  end
end
