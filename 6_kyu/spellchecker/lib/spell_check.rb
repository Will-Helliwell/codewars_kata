def spell_check(string, dictionary_array)

  if string.class != String
    raise ArgumentError.new("Expect: (string, dictionary_array)")
  end

  words = string.split
  words.map!{ |word|
    if dictionary_array.include?(word)
      word
    else
      "~#{word}~"
    end
  }
  words.join(" ")

end
