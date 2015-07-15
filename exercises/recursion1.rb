# Sum exercise from https://www.youtube.com/watch?v=t4MSwiqfLaY

def sum num
	if num < 0
		return 'Ehhh...this program is only for positive numbers at this time.'
	end

	if num <= 1
		num.to_i
	else
		(num + sum(num-1)).to_i
	end
end

puts sum(-1)
puts sum(0.5)
puts sum(0)
puts sum(1)
puts sum(2)
puts sum(3)
puts sum(4)
puts sum(5)
puts sum(5.5)