puts 'Hello! I can tell you what the leap years between any two years are!'
puts 'What is the starting year?'
starting_year = gets.chomp
puts 'And the ending year?'
ending_year = gets.chomp
puts 'The leap year(s) between ' + starting_year + ' and ' + ending_year + ' is(are):'
year = starting_year
number_leap_years = 0
while year.to_i <= ending_year.to_i
<<<<<<< HEAD
  if year.to_i % 400 == 0
    puts year
    number_leap_years = number_leap_years.to_i + 1
  else
    if year.to_i % 4 == 0 && year.to_i % 100 != 0
    puts year
    number_leap_years = number_leap_years.to_i + 1
    end
=======
  if year.to_i % 400 == 0 || (year.to_i % 4 == 0 && year.to_i % 100 != 0)
    puts year
    number_leap_years = number_leap_years.to_i + 1
>>>>>>> 5626b2297387e6a3cbebb6ff6f5a5ac7c6bf0afe
  end
  year = year.to_i + 1
end
if number_leap_years == 0
  puts 'None'
end
<<<<<<< HEAD
=======


>>>>>>> 5626b2297387e6a3cbebb6ff6f5a5ac7c6bf0afe
