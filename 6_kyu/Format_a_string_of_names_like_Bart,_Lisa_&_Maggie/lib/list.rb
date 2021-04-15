def list(names)
  if names.empty?
    ""
  elsif names.length == 1
    names[0][:name]
  else
    "#{names[0][:name]} & #{names[1][:name]}"
  end
end
