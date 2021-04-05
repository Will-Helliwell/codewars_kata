def likes(names)
  check_likes_argument(names)
  first_person = names.first
  second_person = names[1]
  if names.length == 0
    "no one likes this"
  elsif names.length == 1
    "#{first_person} likes this"
  elsif names.length == 2
    "#{first_person} and #{second_person} like this"
  elsif names.length == 3
    "#{first_person}, #{second_person} and #{names[2]} like this"
  else
    "#{first_person}, #{second_person} and #{names.length - 2} others like this"
  end
end

private
def check_likes_argument(argument)
  argument_error_message = "expect a single array containing strings"
  raise ArgumentError.new(argument_error_message) if argument.class != Array || contains_non_string?(argument)
end

def contains_non_string?(array)
  array.filter{ |name| name.class != String }.length > 0
end
