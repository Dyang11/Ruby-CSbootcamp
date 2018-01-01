input = ' '
while input != 'BYE'
  input = gets.chomp
  if input == 'BYE'
    break
  else
    if input != input.upcase
      puts 'HUH?! SPEAK UP, SONNY!'
   else
      if input == input.upcase
        puts 'NO, NOT SINCE ' + (1950-rand(21)).to_s + '!'
      end
    end
  end
end
puts 'BYE SONNY! SEE YOU SOON!'
