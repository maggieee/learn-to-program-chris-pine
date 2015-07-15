puts 'Howdy! We\'re going to play a birthday game. First, what year were you born in?'
birth_year = gets.chomp

puts "Cool! What month in #{birth_year}?"
birth_month = gets.chomp

puts "Neato! And finally, what day in #{birth_month + ', ' + birth_year}?"
birth_day = gets.chomp

birthday = Time.local(birth_year, birth_month, birth_day)

age = (Time.now - birthday)

seconds_in_a_year = 365*24*60*60

age = (age/seconds_in_a_year).to_i

age_array = [0..age]

# puts age_array

puts "Yowzers! You\'re #{age} years old. Here\'s something to commemorate that:"

n = 0

while n < age
	puts 'SPANK!'
	n = n + 1
end 