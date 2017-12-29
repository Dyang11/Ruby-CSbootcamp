line_width = 15
tocs = ['Table of Contents', 'Chapter 1:', 'Getting Started', 'page  1', 'Chapter 2:', 'Numbers', 'page  9', 'Chapter 3:', 'Letters', 'page 13']
puts tocs[0].center(line_width * 4)
puts tocs[1].ljust(line_width) + tocs[2].ljust(line_width) + tocs[3].rjust(line_width*2)
puts tocs[4].ljust(line_width) + tocs[5].ljust(line_width) + tocs[6].rjust(line_width*2)
puts tocs[7].ljust(line_width) + tocs[8].ljust(line_width) + tocs[9].rjust(line_width*2)
