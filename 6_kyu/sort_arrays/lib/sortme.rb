def sortme(string_array)
  downcased_words = []
  string_array.map!{ |word|
    if word != word.downcase
      downcased_words << word
      word.downcase!
    else
      word
    end
  }
  string_array.sort!
  string_array.map!{ |word|
    if downcased_words.include?(word)
      word.capitalize
    else
      word
    end
  }

  # puts "string_array #{string_array}"
  # puts "downcased_words #{downcased_words}"
end


# sortme(["a", "c", "B"])
