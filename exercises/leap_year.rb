puts 'Gimme a first year.'
starting_year = gets.chomp.to_i

puts "Cool #{starting_year} will be the starting year. And what\'s the ending year?"
ending_year = gets.chomp.to_i

starting_leap_years = starting_year / 4
starting_year_hundreds = starting_year / 100
starting_year_four_hundreds = starting_year / 400
starting_leap_years = starting_leap_years - starting_year_hundreds + starting_year_four_hundreds
# puts starting_leap_years

ending_leap_years = ending_year / 4
ending_year_hundreds = ending_year / 100
ending_year_four_hundreds = ending_year / 400
ending_leap_years = ending_leap_years - ending_year_hundreds + ending_year_four_hundreds
# puts ending_leap_years

puts "There are #{ending_leap_years - starting_leap_years} leap years between #{starting_year} and #{ending_year}."
	
