# CSUTOM SORT
	# def sort some_array
	# 	recursive_sort some_array, []
	# end

	# def recursive_sort unsorted_array, sorted_array
	# 	if unsorted_array.length <= 0
	# 		return sorted_array
	# 	end

	# 	smallest = unsorted_array.pop
	# 	still_unsorted = []

	# 	unsorted_array.each do |word|
	# 		if word < smallest
	# 			still_unsorted.push smallest
	# 			smallest = word
	# 		else
	# 			still_unsorted.push word
	# 		end
	# 	end
	# 	sorted_array.push smallest
	# 	recursive_sort still_unsorted, sorted_array
	# end

	# array = ['whale','pear','banana','apple','fig','dog','happy','zebra']
	# puts(sort(array))


#NOTES: I understood the logic behind the process of doing this, that the sorted_array should grow and the still_unsorted should shrink as they go through them, but I was way over-complicating the process. All I needed to do was use each...do, and I was trying to use all kinds of while loops, ifs, if else, etc. 

#LESSON LEARNED: The solution is most likely elegant and simple

#RANDOM SHUFFLE
	# def shuffle array
	# 	length = array.length
	# 	count = 0
	# 	shuffled = []
	# 	while count < length
	# 		num = rand(length)
	# 		num = num - 1
	# 		shuffled.push array[num]
	# 		count = count + 1
	# 	end
	# 	puts shuffled
	# end
	# array = [1,2,3,4,5,6]
	# shuffle(array)


#DICTIONARY SORT
	# def dic_sort array
	# 	rec_dic_sort array, []
	# end

	# def rec_dic_sort unsorted_array, sorted_array
	# 	if unsorted_array.length <= 0
	# 		return sorted_array
	# 	end

	# 	smallest = unsorted_array.pop
	# 	still_unsorted = []

	# 	unsorted_array.each do |word|
	# 		if word.downcase < smallest.downcase
	# 			still_unsorted.push smallest
	# 			smallest = word
	# 		else
	# 			still_unsorted.push word
	# 		end
	# 	end
	# 	sorted_array.push smallest.capitalize
	# 	rec_dic_sort still_unsorted, sorted_array
	# end

	# array = ['Donkey','Gentleman','dog','apple','Hick']
	# puts(dic_sort(array))

#ENLGISH NUMBER
def english_number NUMBER
	if number < 0
		return 'Please enter a number that isn\'t negative'
	end
	if number == 0
		return 'zero'
	end

	num_string = ''

	ones_place = ['one','two','three','four','five','six','seven','eight','nine']
	tens_place = ['ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']
	teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','ninteen']

	left = number
	write = left/100
	left = left - write * 100

	if write > 0
		if ((write == 1) and (left > 0))
			num_string = num_string + teenagers[left - 1]
			left = 0
		end
	else
		num_string = num_strong + ten_place[write - 1]
	end
	if left > 0
		num_string = num_string + '-'
	end
	num_string
end

puts english_number(0)
puts english_number(9)
puts english_number(10)

