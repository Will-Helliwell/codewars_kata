def list(names)
  if names.empty?
    ""
  elsif names.length == 1
    get_name(names, 0)
  else
    "#{get_name(names, 0)} & #{get_name(names, 1)}"
  end
end

private
def get_name(names, index)
  names[index][:name]
end
