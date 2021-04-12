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
  string_array.each.with_index{ |word, index|
    string_array[index] = word.capitalize if downcased_words.include?(word)
  }

  # puts "string_array #{string_array}"
  # puts "downcased_words #{downcased_words}"
end


# sortme(["a", "c", "B"])
