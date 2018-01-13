puts 'Hey there! I can give you the english form for any numeral less than a quadrillion.'
puts 'Simply enter a number in the line below. If you wish to escape the program, please press enter on a blank line.'

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

number = ' '
while true
  number = gets.chomp.to_i
  if number == ''.to_i
    break
  end
  puts english_number number
end
