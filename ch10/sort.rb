puts 'Hello there! I can return a list of words you enter in alphabetical order!'
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

def sort word_list
  program_sort word_list, []
end

def program_sort not_done, done
  if not_done.length == 0
    return done.join(', ') + '.'
  end

  hold = not_done.pop
  unsorted = []

  not_done.each do |item|
    if item < hold
      unsorted.push hold
      hold = item
    else
      unsorted.push item
    end
  end

  done.push hold
  program_sort unsorted, done

end

puts 'The ' + word_list.length.to_s + ' words you entered listed in alphabetical order are:'
puts sort(word_list)
