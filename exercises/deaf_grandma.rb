# while true

# 	puts 'HEY THERE SONNY! WHAT\'S UP?!'
# 	words = gets.chomp

# 	if words == 'BYE'
# 		break
# 	elsif words == words.upcase
# 		year = rand(1930..1950)
# 		puts "NO, NOT SINCE #{year}!"
# 	else 
# 		puts 'HUH?! SPEAK UP, SONNY!'
# 	end	

# end

while true

	puts 'HEY THERE SONNY! WHAT\'S UP?!'
	count = 0

	while count < 3
		words = gets.chomp
		if words == 'BYE'
			puts 'PIE?! YOU WANT PIE?!??'
			count = (count + 1)
			# puts count
		elsif words == words.upcase
			count = 0
			year = rand(1930..1950)
			puts "NO, NOT SINCE #{year}!"
		else 
			count = 0
			puts 'HUH?! SPEAK UP, SONNY!'
		end	

	end

	if count == 3
		break
	end

end