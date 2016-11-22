# 5.3 Mandatory Pairing: Iteration by Denise Duffy and Rebecca Orr
# Theme of the day, Art!

# Release 0 Write Your Own Method That Takes a Block 

# def greatest_artist
# 	puts "Who is the greatist artist?"
# 		# artist1 = "Picasso"
# 		# artist2 = "Matisse"
# 		# yield(artist1,artist2)

# 		yield ("Picasso"),("Renoir")
# 		# yield ("Bechtal"),("Olivera")
# 		# yield ("Rodin"),("Brancusi")
	
# 		# 3.times {yield}
		
# end

# greatest_artist { |artist1, artist2| puts "Is it #{artist1} or #{artist2}?" }		

# output:
# ruby :> ruby iteration.rb
# Who is the greatist artist?
# Is it Picasso or Renoir?

# Release 1 Use each, map, and map!
# Demonstrate that you can iterate through each one using .each, and then 
# using .map! (modifying the data in some way). Note that you can't call 
# .map! on a hash, so you can skip that

# art_movements = ["Impressionisism", "Modern", "Surrealism","Bay Area Figurative","Pop Art"]

# works_of_art = {
# 	:Henri_Matisse => "Woman_with_a_Hat",
#  	:Joan_Mitchell => "Untitled",   
# 	:Paul_Klee => "Blossoms_in_the_Night",
# 	:Robert_Bechtle => "Watsonville_Olympia",
# 	:Andy_Warhol => "Marilyn_Monroe_number_251"
#  }

# # p art_movements
# # p works_of_art

# # art_movements.each {|movement| puts "#{movement} is a art movement"} 

# # Add the work movements to array
# # puts art_movements
# # art_movements.map! {|movement| movement+= " Movement"} 
# # puts art_movements


# # puts works_of_art
# # works_of_art.each {|artist,title| puts "#{title} by #{artist}" }
# # puts works_of_art

# # p works_of_art
# # new_array = works_of_art.map {|artist,title| [title, title, artist] }
#  # puts new_array
# puts works_of_art
# new_array = works_of_art.map {|artist,title| ["#{title} was painted by #{artist}"] }
# puts new_array









