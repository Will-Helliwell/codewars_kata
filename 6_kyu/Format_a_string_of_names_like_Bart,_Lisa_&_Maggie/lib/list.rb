def list(names)
  if names.empty?
    ""
  elsif names.length == 1
    get_name(names, 0)
  elsif names.length == 2
    "#{get_name(names, 0)} & #{get_name(names, 1)}"
  else
    final_names = [] << names[-2] << names[-1]
    first_names_string = get_comma_separated_names_string(names[0..-3])
    first_names_string + ", " + list(final_names)
  end
end

private
def get_name(names, index)
  names[index][:name]
end

def get_comma_separated_names_string(names)
  names.map{ |name_hash| name_hash[:name] }.join(", ")
end
