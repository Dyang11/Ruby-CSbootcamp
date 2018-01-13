puts 'How many bottles of beer do we have to start?'
number_start = gets.chomp.to_i
num = number_start

def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number >= 1000000000000000
    return 'Please enter a number less than a quadrillion.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''
  ones_place = ['one', 'two', 'three',
    'four', 'five', 'six',
    'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
    'forty', 'fifty', 'sixty',
    'seventy', 'eighty', 'ninety']
  teens = ['eleven', 'twelve', 'thirteen',
    'fourteen', 'fifteen', 'sixteen',
    'seventeen', 'eighteen', 'nineteen']
  big_numbers = [['hundred', 100], ['thousand', 1000], ['million', 1000000], ['billion', 1000000000], ['trillion', 1000000000000]]

  left = number

  while big_numbers.length > 0
    big_number_pair = big_numbers.pop
    big_number_name = big_number_pair[0]
    big_number_base = big_number_pair[1]
    write = left/big_number_base
    left = left - write*big_number_base

    if write > 0
      stored_value = english_number write
      num_string = num_string + stored_value + ' ' + big_number_name
      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teens[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end


while num > 2
  puts english_number(num).capitalize + ' bottles of beer on the wall, ' + english_number(num) + ' bottles of beer.'
  num = num - 1
  puts 'Take one down, pass it around, ' + english_number(num) + ' bottles of beer on wall.'
  puts ' '
end

puts 'Two bottles of beer on the wall, two bottles of beer.'
puts 'Take one down, pass it around, one more bottle of beer on the wall.'
puts ' '
puts 'One bottle of beer on the wall, one bottle of beer.'
puts 'Take one down, pass it around, no more bottles of beer on the wall.'
puts ' '
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, ' + english_number(number_start) + ' bottles of beer on the wall.'
