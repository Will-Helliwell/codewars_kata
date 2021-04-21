def is_anagram?(string1, string2)
  return true if ordered_letters_array(string1) == ordered_letters_array(string2)
  false
end

private
def ordered_letters_array(string)
  string.split("").sort
end
