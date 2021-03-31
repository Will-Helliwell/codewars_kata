def spell_check(string, dictionary_array)
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
