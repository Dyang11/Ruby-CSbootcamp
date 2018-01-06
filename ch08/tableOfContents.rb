line_width = 15
tocs = [['Chapter 1:', 'Getting Started', 'page  1'], ['Chapter 2:', 'Numbers', 'page  9'], ['Chapter 3:', 'Letters', 'page 13']]
puts 'Table Of Contents'.center(line_width * 4)
tocs.each do |toc|
puts toc[0].ljust(line_width) + toc[1].ljust(line_width) + toc[2].rjust(line_width * 2)
end
