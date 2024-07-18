def substrings(word, list)
  result = {}
  wordcase = word.downcase.split

  # run through each item in list
  list.each do |listitem|
    count = 0
    # compare each list item with all the items in word
    wordcase.each do |worditem|
      if worditem.include?(listitem)
        count += 1
      end
    end
    # after comparing, if the list item does exist as a substring in word, we save the result
    if count > 0
      result[listitem]= count
    end
  end
  return result
end

stringword = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings(stringword, dictionary)
