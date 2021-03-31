def spell_check(string, dictionary_array)
  if dictionary_array.include?(string)
    string
  else
    "~#{string}~"
  end
end
