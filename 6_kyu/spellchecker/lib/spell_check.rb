def spell_check(string, dictionary_array)
  if dictionary_array.include?(string)
    string
  else
    "~hello~"
  end
end
