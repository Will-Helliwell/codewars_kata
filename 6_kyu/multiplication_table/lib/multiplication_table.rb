def multiplication_table(size)

  return_array = Array.new(size) { Array.new(size) }

  for i in (1..size)
    for j in (1..size)
      return_array[i - 1][j - 1] = i * j
    end
  end

  return_array

end
