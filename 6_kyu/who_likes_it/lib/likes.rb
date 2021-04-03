def likes(array)
  first_person = array.first
  if array.length == 1
    "#{first_person} likes this"
  else
    "#{first_person} and #{array[1]} like this"
  end
end
