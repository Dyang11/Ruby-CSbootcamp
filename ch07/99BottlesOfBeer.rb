number = 99
while number != 1
  puts number.to_s + ' bottles of beer on the wall, ' + number.to_s + ' bottles of beer.'
  puts 'Take one down, pass it around, ' + (number - 1).to_s + ' bottles of beer on wall.'
  puts ' '
  number = (number.to_i - 1)
end
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down, pass it around, no more bottles of beer on the wall.'
puts ' '
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
