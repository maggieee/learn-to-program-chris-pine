class Integer

	def to_old_school_roman_numeral
		old_school_roman_numeral = ''
			m = self / 1000
			d = (self - m*1000)/500
			c = (self - m*1000 - d*500)/100
			l = (self - m*1000 - d*500 - c*100)/50
			x = (self - m*1000 - d*500 - c*100 - l*50)/10
			v = (self - m*1000 - d*500 - c*100 - l*50 - x*10)/5
			i = (self - m*1000 - d*500 - c*100 - l*50 - x*10 - v*5)/1
			old_school_roman_numeral = 'M'*(m)+'D'*(d)+'C'*(c)+'L'*(l)+'X'*(x)+'V'*(v)+'I'*(i)
			# puts old_school_roman_numeral
	end		
end

# puts old_school_roman_numeralize(3889)

puts 'Give me a year to convert to roman numeral.'
year = gets.chomp.to_i
puts year.to_old_school_roman_numeral