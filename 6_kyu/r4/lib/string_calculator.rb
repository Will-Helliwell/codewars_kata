def string_calculator(sum)
  chars = sum.split
  result = nil

  if chars.length == 1
    result = sum.to_i
  else
    if chars[1] == "*"
      result = chars[0].to_i * chars[2].to_i
    else
      result = chars[0].to_i + chars[2].to_i
    end
  end

  [sum, result]

end

# private
# sum(int, string, int)
