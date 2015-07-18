class OrangeTree

	def initialize tree_name
		@tree_name = tree_name
		@alive = true
		@height = 1
		@age = 0
		@orange_count = 0

		puts "Your new tree, #{tree_name} has just emerged from the earth. #Amazing! Let\'s not kill it."

	end

	def count_the_oranges
		puts "#{@tree_name} has #{@orange_count} oranges currently available."
	end

	def pick_an_orange
		if @orange_count <= 0
			puts 'There aren\'t any oranges left! Gotta wait til next year!'
		else
			@orange_count = @orange_count - 1
			puts "You picked an orange. We\'re now down to #{@orange_count} oranges in this season\'s harvest. Better make \'em count!"
		end
	end

	def turn_the_sun
		one_year_passes
	end


	private

	def mature?
		@age >= 3 
	end

	def one_year_passes
		@age = @age + 1

		if @age > 47
			@alive = false
			puts "Like all things that were once fruitful, your orange tree\'s life has come to an end. Alas, poor #{@tree_name}, I knew them well!"
			exit
		end

		if @alive == true

			if @age >=3
				@height = @height + (@age * 5)
			elsif @age > 15
				@height = @height
			else
				@height = @height + (@age * 7)
			end

			@orange_count = 0 

			if @age >= 5
				@orange_count = (@age*12)
			end

			puts "Another turn around the sun: #{@tree_name} is now #{@age} years old.\nThey are #{@height} units tall, and have produced #{@orange_count} oranges this year.\nWooo! Let\'s get picking."
		end
	end
end

tree = OrangeTree.new 'Leafy'
tree.turn_the_sun
tree.turn_the_sun
tree.turn_the_sun
tree.turn_the_sun
tree.pick_an_orange
tree.count_the_oranges
tree.turn_the_sun
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
