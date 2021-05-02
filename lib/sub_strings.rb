def sub_strings(string, dictionary)
  words = string.split(/\W?\s/)
  found_hash = Hash.new
  words.each { |word| 
    dictionary.each { |dictionary_word| 
      if word.downcase.include?(dictionary_word.downcase)
        found_hash[dictionary_word] != nil ? found_hash[dictionary_word] += 1 : found_hash[dictionary_word] = 1
      end
    }
  }
  return found_hash
end