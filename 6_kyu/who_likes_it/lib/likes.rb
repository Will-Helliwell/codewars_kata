def likes(array)
  first_person = array.first
  if array.length == 1
    "#{first_person} likes this"
  elsif array.length == 2
    "#{first_person} and #{array[1]} like this"
  else
    "#{first_person}, #{array[1]} and #{array[2]} like this"
  end
end
