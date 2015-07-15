M = 'land'
o = 'water'

world = [[o,o,o,o,M,o,o,o,o,o,o],
		 [o,o,o,o,M,M,o,o,o,o,o],
		 [o,o,o,o,o,o,o,o,M,M,o],
		 [o,o,o,M,o,o,o,o,o,M,o],
		 [o,o,o,M,o,M,M,o,o,o,o],
		 [o,o,o,o,M,M,M,M,o,o,o],
		 [o,o,o,M,M,M,M,M,M,M,o],
		 [o,o,o,M,M,o,M,M,M,o,o],
		 [o,o,o,o,o,o,M,M,o,o,o],
		 [o,M,o,o,o,M,o,o,o,o,o],
		 [o,o,o,o,o,o,o,o,o,o,o]]

def continent_size world, x, y
	if (y+1 > world.length || x+1 > world[y].length)
		# puts 'nutella'
		return 0
	end

	if world[y][x] != 'land'
		# puts 'artichoke'
		return 0
	end

	size = 1
	world[y][x] = 'counted land'

	size = size + continent_size(world, x-1, y-1)
	size = size + continent_size(world, x  , y-1)
	size = size + continent_size(world, x+1, y-1)
	size = size + continent_size(world, x-1, y  )
	size = size + continent_size(world, x+1, y  )
	size = size + continent_size(world, x-1, y+1)
	size = size + continent_size(world, x  , y+1)
	size = size + continent_size(world, x+1, y+1)
	

	size
	# puts 'monkey'
end

puts continent_size(world, 4, 1)
puts continent_size(world, 4, 5)
puts continent_size(world, 5, 11)