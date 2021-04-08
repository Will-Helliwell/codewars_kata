def string_calculator(sum)
  chars = sum.split

  if chars.length == 1
    [sum, sum.to_i]
  else
    if chars[1] == "*"
      result = chars[0].to_i * chars[2].to_i
      [sum, result]
    else
      result = chars[0].to_i + chars[2].to_i
      [sum, result]
    end

  end

end
