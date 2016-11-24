# 5.3 Mandatory Pairing: Iteration by Denise Duffy and Rebecca Orr
# Theme of the day, Art!

# Release 0 Write Your Own Method That Takes a Block 

# def greatest_artist
# 	puts "Who is the greatist artist?"
	 		# artist1 = "Picasso"
	 		# artist2 = "Matisse"
	 		# yield(artist1,artist2)

			# yield ("Picasso"),("Renoir")
			# yield ("Bechtal"),("Olivera")
			# yield ("Rodin"),("Brancusi")
		
			# 3.times {yield}
			
# end

# greatest_artist { |artist1, artist2| puts "Is it #{artist1} or #{artist2}?" }		

# output:
# ruby :> ruby iteration.rb
# Who is the greatist artist?
# Is it Picasso or Renoir?

# Release 1 Use each, map, and map!

# art_movements = ["Impressionisism", "Modern", "Surrealism","Bay Area Figurative","Pop Art"]

# works_of_art = {
# 	:Henri_Matisse => "Woman_with_a_Hat",
#  	:Joan_Mitchell => "Untitled",   
# 	:Paul_Klee => "Blossoms_in_the_Night",
# 	:Robert_Bechtle => "Watsonville_Olympia",
# 	:Andy_Warhol => "Marilyn_Monroe_number_251"
#  }

# p art_movements
# p works_of_art

# art_movements.each {|movement| puts "#{movement} is a art movement"} 

# Add the work movements to array
# puts art_movements
# art_movements.map! {|movement| movement+= " Movement"} 
# puts art_movements


# puts works_of_art
# works_of_art.each {|artist,title| puts "#{title} by #{artist}" }
# puts works_of_art

# p works_of_art
# new_array = works_of_art.map {|artist,title| [title, title, artist] }
# puts new_array
# puts works_of_art
# new_array = works_of_art.map {|artist,title| ["#{title} was painted by #{artist}"] }
# puts new_array

list_of_integers = [0, 3, 10, 12, 15, 63, 84]
places = {
	:california => "san francisco",
	:oregon => "portland",
	:washington => "seattle"
}

# Arrays
# 1
# 
# puts list_of_integers

# 2
# new_array = list_of_integers.select {|num| num < 3}
# puts new_array 
## => [0]

# 3
# list_of_integers.reject! {|num| num % 2 == 0}
# puts list_of_integers

# 4
# some_array = list_of_integers.take_while {|num| num < 10}
# puts some_array

# Hashes
# 1
# better_places = places.reject { |state, city| state == :oregon}
# puts better_places

# 2
# long_city_hash = places.keep_if { | state, city| city.length > 7}
# puts long_city_hash

# 3
# short_cities = places.keep_if {|state, city| city.length < 8}
# puts short_cities

# 4
#puts places.fetch(:california) { |state| "oops that #{state} wasn't found"}






