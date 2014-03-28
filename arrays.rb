# names = ['Ada','Belle','Chris']
# puts names
# puts
# puts names[0]
# puts names[1]
# puts names[2]
# puts names[3] # Out of range

# foods = ['artichoke','brioche','caramel']

# puts foods
# puts
# puts foods.to_s
# puts
# puts foods.join(', ')
# puts
# puts foods.join(' :) ') + ' 8)'

# 200.times do
# 	puts []
# end

# numbers = ['1',['2','2.25','2.5'],'3','4','5','6']
# puts numbers

# favorites = []
# favorites.push 'raindrops on roses'
# favorites.push 'whiskey on kittens'

# puts favorites[0]
# puts favorites.last
# puts favorites.length

# puts favorites.pop
# puts favorites
# puts favorites.length

# Alphabetized List
	# array = []
	# input = gets.chomp
	# while input != ''
	# 	array.push input
	# 	input = gets.chomp
	# end
	# puts array.sort

table = ['Table of Contents',['Chapter 1:','	Getting Started','	page	1'],['Chapter 2:','	Numbers','	page	9'],['Chapter 3:','	Letters','	page	13']]
line_width = 40
puts table[0].center(line_width)
puts table[1][0].ljust(line_width/3) + table[1][1].ljust(line_width/3) + table[1][2].rjust(line_width/3)
puts table[2][0].ljust(line_width/3) + table[2][1].ljust(line_width/3) + table[2][2].rjust(line_width/3)
puts table[3][0].ljust(line_width/3) + table[3][1].ljust(line_width/3) + table[3][2].rjust(line_width/3)