puts 'Hello there! I can shuffle a list of words you enter!'
puts 'Please type one word per line and use the return key after each entry.'
puts 'Press the return key on an empty entry to finish.'
word_list = []
word_entries = ' '
while word_entries != ''
  word_entries = gets.chomp
  if word_entries != ''
    word_list.push word_entries
  end
end

def shuffle word_list
  shuffled_list = []
  while word_list.length > 0
    random_index = rand(word_list.length)
    counting_index = 0
    new_list = []

    word_list.each do |item|
      if counting_index = random_index
        shuffled_list.push item
      else
        new_list.push item
      end
      counting_index = counting_index + 1
    end
    word_list = new_list
  end
  puts shuffled_list.join(', ') + '.'
end

puts 'The ' + word_list.length.to_s + ' words you entered, shuffled:'
shuffle word_list
