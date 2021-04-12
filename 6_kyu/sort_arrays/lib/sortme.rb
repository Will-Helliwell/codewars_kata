def sortme(string_array)
  downcased_words = []
  record_upper_case_words(string_array, downcased_words)
  downcase_array(string_array)
  string_array.sort!
  upcase_matching_words(string_array, downcased_words)

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

def upcase_matching_words(string_array, matching_words)
  string_array.each.with_index{ |word, index|
    string_array[index] = word.capitalize if matching_words.include?(word)
  }
end
