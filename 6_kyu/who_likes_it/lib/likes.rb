def likes(array)
  raise ArgumentError.new("expect a single array containing strings") if array.class != Array
  first_person = array.first
  second_person = array[1]
  if array.length == 0
    "no one likes this"
  elsif array.length == 1
    "#{first_person} likes this"
  elsif array.length == 2
    "#{first_person} and #{second_person} like this"
  elsif array.length == 3
    "#{first_person}, #{second_person} and #{array[2]} like this"
  else
    "#{first_person}, #{second_person} and #{array.length - 2} others like this"
  end
end
