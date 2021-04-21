def is_anagram?(string1, string2)
  error_invalid_arguments(string1, string2)
  return true if ordered_letters_array(string1) == ordered_letters_array(string2)
  false
end

private
def ordered_letters_array(string)
  string.split("").sort
end

def error_invalid_arguments(string1, string2)
  if string1.class != String || string2.class != String
    raise ArgumentError.new("Argument format: (string, string)")
  end
end
