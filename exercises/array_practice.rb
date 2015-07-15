array = []
word = 'placeholder'

while true
	if word != ''
		puts 'Gimme a word for my word array.'
		word = gets.chomp	
		array.push(word)
	else
		puts "Here\'s all your words in alphabetical order!!!!:" 
		puts array.sort
		break
	end
end