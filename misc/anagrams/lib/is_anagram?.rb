def is_anagram?(string1, string2)
  return true if string1.split("").sort == string2.split("").sort
  false
end
