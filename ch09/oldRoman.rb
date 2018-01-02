puts 'Hello there! I can tell you what the old-school Roman representation of any number less than 4000 is.'
puts 'To get the Roman numeral, type in your number.'
puts 'To exit the program, enter a blank line.'

integer = ' '
while integer != ''
integer = gets.chomp
roman = ''
values = [['5000', 'M', '1000'],
  ['1000', 'D', '500'],
  ['500', 'C', '100'],
  ['100', 'L', '50'],
  ['50', 'X', '10'],
  ['10', 'V', '5'],
  ['5', 'I', '1']]
values.each do |num|
  roman = roman + (num[1] * ((integer.to_i % num[0].to_i) / num[2].to_i).to_i)
  end
  puts roman
end
