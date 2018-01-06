puts 'Hello there! I can tell you what the old-school Roman representation of any number less than 5000 is.'
puts 'To get the Roman numeral, type in your number.'
puts 'To exit the program, enter a blank line.'

def romanize integer
  roman = ''
  values = [['5000', 'M', '1000'],
    ['1000', 'D', '500'],
    ['500', 'C', '100'],
    ['100', 'L', '50'],
    ['50', 'X', '10'],
    ['10', 'V', '5'],
    ['5', 'I', '1']]
    values.each do |num|
      roman = roman + (num[1] * ((integer % num[0].to_i) / num[2].to_i))
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
