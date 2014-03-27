var1 = 2
var2 = '5'

puts var1.to_s + var2
puts var1 + var2.to_i

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number'.to_i
puts 'Who asked you about 5 of whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i

# puts 'Hello there, and what\'s your name?'
# name = gets.chomp
# puts 'Your name is ' + name + '? What a lovely name!'
# puts 'Pleased to meet you, ' + name + '. :)'

# # First, Middle and Last name game
# puts 'Hello. What is your first name?'
# first = gets.chomp
# puts 'My, ' + first + ', what an interesting name. Do you mind if I ask what your middle name is?'
# middle = gets.chomp
# puts middle + ', eh? Little more traditional. What about your last?'
# last = gets.chomp
# puts 'Ah - ' + last + ', a good ole English name!'

# Favorite number
puts 'Well Newlin Austin Wilkins, what is your favorite number?'
favorite_number = gets.chomp
puts favorite_number
new_number = favorite_number.to_i + 1
puts new_number
puts 'What a great number! May I suggest, though, you take a look at ' + new_number.to_s + ' - it is slightly more attractive, don\'t you think?'