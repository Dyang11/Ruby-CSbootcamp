puts 'Hello there! I can sort words you enter in alphabetical order!'
puts 'Please type one word per line and use the return key after each entry.'
puts 'Press the return key on an empty entry to finish.'
word_list = []
word_entries = ' '
while word_entries != ''
  word_entries = gets.chomp.capitalize
  if word_entries != ''
    word_list.push word_entries
  end
end
puts 'The ' + word_list.length.to_s + ' words you entered listed in alphabetical order are:'
puts word_list.sort.join(', ') + '.'
