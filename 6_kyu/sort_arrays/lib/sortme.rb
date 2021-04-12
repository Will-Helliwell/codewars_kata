def sortme(string_array)
  downcased_words = []
  record_upper_case_words(string_array, downcased_words)
  downcase_array(string_array)
  string_array.sort!
  string_array.each.with_index{ |word, index|
    string_array[index] = word.capitalize if downcased_words.include?(word)
  }

  # puts "string_array #{string_array}"
  # puts "downcased_words #{downcased_words}"
end


# sortme(["a", "c", "B"])

private
def record_upper_case_words(string_array, record_array)
  string_array.each{ |word|
    if word != word.downcase
      record_array << word
    else
      word
    end
  }
end

def downcase_array(string_array)
  string_array.map!{ |word|
    if word != word.downcase
      word.downcase!
    else
      word
    end
  }
end
