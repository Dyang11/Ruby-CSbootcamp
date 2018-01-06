puts 'Hello there! I can tell you what the modern Roman representation of any number less than 5000 is.'
puts 'To get the Roman numeral, type in your number.'
puts 'To exit the program, enter a blank line.'

def romanize integer
  roman = 'M' * (integer / 1000)

  hundreds = ((integer % 1000) / 100)
  tens = ((integer % 100) / 10)
  ones = (integer % 10)

  if hundreds == 9
    roman = roman + 'CM'
  elsif hundreds == 5
    roman = roman + 'D'
  elsif hundreds == 4
    roman = roman + 'CD'
  else
    roman = roman + ('C' * ((integer % 1000)/ 100))
  end

  if tens == 9
    roman = roman + 'XC'
  elsif tens == 5
    roman = roman + 'L'
  elsif tens == 4
    roman = roman + 'XL'
  else
    roman = roman + ('X' * ((integer % 100)/ 10))
  end

  if ones == 9
    roman = roman + 'IX'
  elsif ones == 5
    roman = roman + 'V'
  elsif ones == 4
    roman = roman + 'IV'
  else
    roman = roman + ('I' * (integer % 10))
  end

  puts roman
end

integer = ' '
while true
  integer = gets.chomp.to_i
  if integer == ''.to_i
    break
  else
    if integer.to_i >= 5000 || integer.to_i <= 0
      puts 'Please enter a positive number smaller than 5000.'
    else
      romanize integer
    end
  end
end
