def delete_nth(array, limit=1)
  raise "input should be an array" if array.class != Array
  return_array = []
  array.each{ |number|
    return_array << number  if return_array.count(number) < limit
  }
  return_array
end
