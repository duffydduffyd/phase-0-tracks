# 5.3 Mandatory Pairing: Iteration by Denise Duffy and Rebecca Orr
# Theme of the day, Art!

# Release 0 Write Your Own Method That Takes a Block 

def greatest_artist
	puts "Who is the greatist artist?"
		artist1 = "Picasso"
		artist2 = "Matisse"
		yield(artist1,artist2)

		# yield ("Picasso"),("Renoir")
		# yield ("Bechtal"),("Olivera")
		# yield ("Rodin"),("Brancusi")
	
		# 3.times {yield}
		
end

greatest_artist { |artist1, artist2| puts "Is it #{artist1} or #{artist2}?" }		


