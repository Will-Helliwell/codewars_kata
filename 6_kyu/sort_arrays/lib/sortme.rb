def sortme(string_array)
  downcased_words_record = []
  record_upper_case_words(string_array, downcased_words_record)
  puts "downcased_words_record after recording: #{downcased_words_record}"
  downcased_array = return_downcase_array(string_array)
  puts "downcased_words_record after downcasing: #{downcased_words_record}"
  puts "downcased array: #{downcased_array}"
  downcased_array.sort!
  upcase_matching_words(downcased_array, downcased_words_record)

  # puts "string_array #{string_array}"
  # puts "downcased_words #{downcased_words_record}"
end


# sortme(["a", "c", "B"])

private
def record_upper_case_words(string_array, record_array)
  string_array.each{ |word|
    puts "word before: #{word}"
    if word != word.downcase
      record_array << word
      puts "word within: #{word}"
    else
      word
    end
    puts "word after: #{word}"
  }
end

def return_downcase_array(string_array)
  string_array.map{ |string|
    if string != string.downcase
      string.downcase
    else
      string
    end
  }
end

def upcase_matching_words(string_array, matching_words)
  downcased_matching_words = matching_words.map{ |word|
    word.downcase
  }
  string_array.each.with_index{ |word, index|
    if downcased_matching_words.include?(word)
      matched_word_index = downcased_matching_words.index(word)
      string_array[index] = matching_words[matched_word_index]
    end
  }
end
