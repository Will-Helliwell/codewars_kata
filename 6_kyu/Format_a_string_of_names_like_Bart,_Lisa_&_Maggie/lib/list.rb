def list(names)
  if names.empty?
    ""
  elsif names.length == 1
    get_name(names, 0)
  elsif names.length == 2
    "#{get_name(names, 0)} & #{get_name(names, 1)}"
  else
    final_names = [] << names[-2] << names[-1]
    final_names_string = final_names.map{ |names_hash| names_hash[:name] }.join(" & ")
    puts final_names_string
    2.times{names.pop}
    names_string = names.map{ |names_hash| names_hash[:name] }.join(", ")
    names_string + ", " + final_names_string
  end
end

private
def get_name(names, index)
  names[index][:name]
end
