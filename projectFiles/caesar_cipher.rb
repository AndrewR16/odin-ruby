def main
  print('Message: ')
  message = gets

  print('Shift: ')
  shift_value = gets.to_i

  puts caeser_cipher(message, shift_value)
end

def caeser_cipher(message, shift_value)
  message.chars.map { |char| shift_letter(char, shift_value) }.join
end

def shift_letter(char, shift_value)
  case char
  when 'A'..'Z'
    ((char.ord - 'A'.ord + shift_value) % 26 + 'A'.ord).chr
  when 'a'..'z'
    ((char.ord - 'a'.ord + shift_value) % 26 + 'a'.ord).chr
  else
    char
  end
end

main
