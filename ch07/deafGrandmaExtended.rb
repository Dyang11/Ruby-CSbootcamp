response = 0
while response.to_i < 3
  input = gets.chomp
  if input == 'BYE'
    puts 'DID YOU SAY SOMETHING?'
    (response = response + 1)
  else
    if input != input.upcase
      puts 'HUH?! SPEAK UP, SONNY!'
    else
      if input == input.upcase
        puts 'NO, NOT SINCE ' + (1950 - rand(21)).to_s + '!'
      end
    end
  end
end
puts 'OH, YOU NEED TO GO? FINE THEN, BYE! SEE YOU SOON, SONNY!'
