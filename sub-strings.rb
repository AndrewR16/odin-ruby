def main()
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  print "String: "
  # given_string = "Howdy partner, sit down! How's it going?"
  given_string = gets.chomp

  puts substrings(given_string, dictionary)
end

# Find all the occurences of each word as a substring in the given string
def substrings(given_string, dictionary)
  found_substrings = Hash.new(0)
  splitString = given_string.downcase.split("")

  dictionary.each do |word|
    splitWord = word.downcase.split("")

    # Line up the dictionary word with each possible frame of the same length from the given string and compare
    for i in 0..(splitString.length - splitWord.length)
      if splitWord == splitString[(0 + i)..(splitWord.length - 1 + i)]
        found_substrings[word] += 1
      end
    end
  end

  found_substrings
end

main()
