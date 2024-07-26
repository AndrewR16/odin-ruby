def main
  dictionary = %w[below down go going horn how howdy it i low own part partner sit]

  print 'String: '
  # given_string = "Howdy partner, sit down! How's it going?"
  given_string = gets.chomp

  puts substrings(given_string, dictionary)
end

# Find all the occurences of each word as a substring in the given string
def substrings(given_string, dictionary)
  found_substrings = Hash.new(0)
  split_string = given_string.downcase.split('')

  dictionary.each do |word|
    split_word = word.downcase.split('')

    # Line up the dictionary word with each possible frame of the same length from the given string and compare
    0..(split_string.length - split_word.length).each do |index|
      found_substrings[word] += 1 if split_word == split_string[(0 + index)..(split_word.length - 1 + index)]
    end
  end

  found_substrings
end

main
