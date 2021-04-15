def list(names)
  if names.empty?
    ""
  else
    names[0][:name]
  end
end
