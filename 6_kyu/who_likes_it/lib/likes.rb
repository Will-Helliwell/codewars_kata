def likes(array)
  if array.length == 1
    "#{array.first} likes this"
  else
    "#{array.first} and #{array[1]} like this"
  end
end
