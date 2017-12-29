puts 'Hello! I can tell you what the leap years between any two years are!'
puts 'What is the starting year?'
starting_year = gets.chomp
puts 'And the ending year?'
ending_year = gets.chomp
puts 'The leap year(s) between ' + starting_year.to_s + ' and ' + ending_year.to_s + ' is(are):'
year = starting_year
number_leap_years = 0
while year.to_i <= ending_year.to_i
  if (year.to_i % 4) == 0
    puts year
    number_leap_years = (number_leap_years.to_i + 1)
  end
  year = (year.to_i + 1)
end
