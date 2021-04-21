def is_anagram?(string1, string2)
  raise ArgumentError.new("Argument format: (string, string)") if string1.class != String || string2.class != String
  return true if ordered_letters_array(string1) == ordered_letters_array(string2)
  false
end

private
def ordered_letters_array(string)
  string.split("").sort
end
