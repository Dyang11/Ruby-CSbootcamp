input = ' '
while input != 'BYE'
  input = gets.chomp
  if input == 'BYE'
    break
  else
    if input != input.upcase
      puts 'HUH?! SPEAK UP, SONNY!'
<<<<<<< HEAD
    else
=======
   else
>>>>>>> 5626b2297387e6a3cbebb6ff6f5a5ac7c6bf0afe
      if input == input.upcase
        puts 'NO, NOT SINCE ' + (1950-rand(21)).to_s + '!'
      end
    end
  end
end
puts 'BYE SONNY! SEE YOU SOON!'
