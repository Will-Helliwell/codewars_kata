def delete_nth(array)
  return_array = []
  array.each{ |number|
    if !(return_array.include?(number))
      return_array << number
    end
  }
  return_array
end
