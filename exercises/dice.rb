class Die

	def initialize
		roll
	end

	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end

	def cheat
		puts 'Please give me a valid die side number to show on the die.'
		@number_showing = gets.chomp
			valid_die_sides = [1,2,3,4,5,6]
			if valid_die_sides.include?(@number_showing.to_i) == false
				puts 'Gonna need a valid die number to cheat with'
				return
			else
				puts @number_showing
			end
		
	end
end


die = Die.new 
die.cheat

# puts die.showing
# puts die.showing
# die.roll
# puts die.showing
# puts die.showing

# die2 = Die.new 
# puts die2.showing