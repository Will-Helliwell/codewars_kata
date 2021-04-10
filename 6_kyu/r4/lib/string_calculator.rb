def string_calculator(sum)

  raise ArgumentError.new("Input must be a string") if sum.class != String
  
  chars = sum.split
  first_integer = chars[0].to_i
  operator_string = chars[1]
  second_integer = chars[2].to_i
  result = nil

  if chars.length == 1
    result = sum.to_i
  else
    result = evaluate_sum(first_integer, operator_string, second_integer)
  end

  [sum, result]

end

private
def evaluate_sum(int1, string, int2)
  case string
    when "*" then int1 * int2
    when "+" then int1 + int2
    when "-" then int1 - int2
    when "/" then int1 / int2
  end
end
