# word = 'blah'
# some_array = []

# while word != ''
# 	puts 'Gimme some words to sort'
# 	word = gets.chomp
# 	some_array.push(word)
# end

# puts "#{some_array}"

cool_array = ['annie', 'zeitoun', 'barack']


def my_sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array

	if unsorted_array == []
		if unsorted_array == sorted_array
			return 'There\'s no point to doing this if you start with an empty array.'
		else
			return "#{sorted_array}"
		end
	end

	# x = 0
	# y = 1
	# while y < unsorted_array.length
	# 	if unsorted_array[x] < unsorted_array[y]
	# 		y = y + 1
	# 	else
	# 		x = x + 1
	# 	end
	# end

 	
	# unsorted_array = unsorted_array.shift
	unsorted_array


	

	# x = 1
	# element_of_interest = unsorted_array[unsorted_array.length - x]

	# if last_unsorted_element < unsorted_array[0]
	# pick this up here and use paper and pen! 
	# puts element_of_interest
end


puts my_sort(cool_array)



# test

# if some_array.sort == some_array.my_sort
# 	puts 'Woooo! PASS!'
# else
# 	puts 'Uh oh...built-in sort and my_sort do not produce the same results...'
# end