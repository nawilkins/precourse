# puts 1 > 2
# puts 1 < 2

# puts 5 >= 5
# puts 5 <= 4

# puts 1 == 1
# puts 2 != 1

# puts 'bug lady' < 'Xander'
# puts 'bug lady'.downcase < 'Xander'.downcase

# puts 2 < 10
# puts '2' < '10'

# IF statements
	# puts 'Hello, what\'s your name?'
	# name = gets.chomp
	# puts 'Hello, ' + name
	# if name == 'Newlin'
	# 	puts 'You are awesome!'
	# end

# If-Else statement
	# puts 'I am a fortune teller. Tell me your name'
	# name = gets.chomp

	# if name == 'Newlin'
	# 	puts 'I see great things in your future'
	# else
	# 	puts 'Your future is...oh my! Look at the time'
	# 	puts 'I really have to go, sorry!'
	# end

	# puts 'Hello, and welcome to the seventh grade English class.'
	# puts 'My name is Mrs. Gabbard. And your name is...?'
	# name = gets.chomp

	# if name == name.capitalize
	# 	puts 'Please take a seat, ' + name + '.'
	# else
	# 	puts name + '? You mean ' + name.capitalize + ', right?'
	# 	puts 'Don\'t you even know how to spell your name?'
	# 	reply = gets.chomp

	# 	if reply.downcase == 'yes'
	# 		puts 'Humph! Well, sit down'
	# 	else
	# 		puts 'GET OUT!'
	# 	end
	# end

#Loop Statements
	# input = ''
	# while input != 'bye'
	# 	puts input
	# 	input = gets.chomp
	# end
	# puts 'Come again soone!'
	# while 'Spike' > 'Angel'
	# 	input = gets.chomp
	# 	puts input
	# 	if input == 'bye'
	# 		break
	# 	end
	# end
	# puts 'Come again soon!'

# 99 bottles of beer on the wall
	# beer = 99
	# while beer > 0
	# 	puts 'There\'s ' + beer.to_s + ' bottles of beer on the wall, ' + beer.to_s + ' bottles of beer'
	# 	puts 'Take one down, pass it around, now there is '
	# 	beer = beer - 1
	# 	puts beer.to_s + ' bottles of beer on the wall'
	# end

#Deaf Grandma
	# year = '19' + (rand(20) + 30).to_s
	# puts 'WHAT\'S THAT??'
	# input = gets.chomp
	# while input != input.upcase && input != 'BYE'
	# 	puts 'HUH? WHAT\'S THAT??'
	# 	input = gets.chomp
	# end
	# if input == 'BYE'
	# 	count = 1
	# 	while count < 3
	# 		puts 'HUH?'
	# 		input = gets.chomp
	# 		if input == 'BYE'
	# 			count = count + 1
	# 		end
	# 	end
	# puts 'OK, BYE'
	# else
	# 	puts 'NO, NOT SINCE ' + year
	# end

# Leap Years
puts 'What is the starting year?'
start_year = gets.chomp.to_i
puts 'And what is the ending year?'
end_year = gets.chomp.to_i

year = start_year
while year <= end_year
	if (year % 100) == 0 && (year % 400) == 0 && (year % 4) == 0
		puts year.to_s + ' Leap year'
	elsif (year % 4) == 0 && (year % 100) != 0
		puts year.to_s + ' Leap Year'
	end
year = year + 1
end



























