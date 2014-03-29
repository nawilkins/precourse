# def double_this num
# 	num_times_2 = num * 2
# 	puts num.to_s + ' doubled is ' + num_times_2.to_s
# end
# double_this 44

#Question method
	# def ask question
	# 	while true
	# 		puts question
	# 		reply = gets.chomp.downcase

	# 		if (reply == 'yes' || reply == 'no')
	# 			if (reply == 'year')
	# 				return true
	# 			else
	# 				return false
	# 		end
	# 		break
	# 		else
	# 			puts 'Please ansswer "yes" or "no"'
	# 		end
	# 	end
	# 	return
	# end

	# puts 'Hello, thank you for...'
	# puts
	# ask 'Do you like eating tacos?'
	# ask 'Do you like eating burritos?'
	# wets_bed  = ask 'Do you wet the bed?'
	# ask 'Do you like chimichangas?'
	# ask 'Do you like eating sopapillas?'
	# puts 'Just a few more questions'
	# ask 'Do you like drinking horchata?'
	# ask 'Do you like eating flautas?'

	# puts
	# puts 'DEBRIEFING'
	# puts 'Thank you for...'
	# puts
	# puts wets_bed

def old_roman number
	numerals = []
	while number < 0
		puts 'please use a whole number  => 1 and <= 3000'
	end
	if number % 1000 > 0
		thousands = number / 1000
		m_numerals = 'M' * thousands
		numerals.push m_numerals
		number = number - (thousands * 1000)
	end
	if number % 500 > 0
		numerals.push 'D'
		number = number - 500
	end
	if number % 100 > 0
		hundreds = number / 100
		c_numerals = 'C' * hundreds
		numerals.push c_numerals
		number = number - (hundreds * 100)
	end
	if number % 50 > 0
		numerals.push 'L'
		number = number - 50
	end
	if number % 10 > 0
		tens = number / 10
		x_numerals = 'X' * tens
		numerals.push x_numerals
		number = number - (tens * 10)
	end
	if number % 5 > 0
		numerals.push 'V'
		number = number - 5
	end

	ones = number
	i_numerals = 'I' * ones
	numerals.push i_numerals

	puts numerals
end
puts "Please choose a number between 1 and 3000"
number = gets.chomp.to_i
old_roman(number)
