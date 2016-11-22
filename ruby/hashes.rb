# 4.2 Hashes Denise Duffy 11/21/17

# Enter a customer information
puts "What is the customer's name?"
customer_name = gets.chomp

# Trying to go little above and beyond here by making an array a hash value
puts "What are their favorite colors? Please separate with commas."
colors = gets.chomp
fav_colors = colors.split(",")
p fav_colors

# Trying to go little above and beyond here by making an array a hash value 
puts "What are their favorite styles? Please separate with commas."
styles = gets.chomp
fav_styles = styles.split(",")
p styles

puts "What is their light preference?"
light_preference = gets.chomp

customer = {
	:name => customer_name,
	:colors => fav_colors,
	:styles => fav_styles, 
	:light => light_preference
}

# Give the user the opportunity to update a key, value pair without a loop
puts "Would you like to update any data you just entered? (y or n)"
answer = gets.chomp

	if answer == "y"
		puts "Is it the name, color, style, or light?"
		update_data = gets.chomp

			case update_data
			when "name"
				puts "What is the new name?"	
				new_name = gets.chomp
				customer[:name] = new_name
			

			when "color"
				puts "What are the new colors?"
				new_colors = gets.chomp
				customer[:color] = new_colors
			

			when "style"
				puts "What are their favorite styles?"
				new_styles = gets.chomp
				customer[:style] = new_styles
				

			when "light"
				puts "What is their light preference?"
				new_light = gets.chomp
				customer[:light] = new_light
			
			end	

	elsif answer == "n"
			
	end	

# Give user opportunity to add another the key and value pair
puts "Do they have any other categories to discuss? (y/n)"
another_category = gets.chomp	
		
	case another_category	
	when "y" 
		puts "What categories would you like to add?"
		user_category = gets.chomp #'food'
		new_category = user_category.to_sym#:food
		
		puts "What are the specifics of this?"
		specifics = gets.chomp #'cheese'
		# Add new key and value to hash
		# puts "Your specifics are #{specifics}"
		customer[new_category] = specifics
		# customer[:food] = 'cheese'
	when "n"
	#	break	
	end	

puts "Your customer, #{customer_name}, likes the following things:" 

# Print out key and value pair. Looked a bit nicer before I refactored for an array.
# I kept in the block the words key, and value because I am still learning
# the syntax of all of this. In the future the block variables will be more meaningful.  
customer.each do |key, value|
	puts "#{key} ==> #{value}"   
end

# Add "used data structures in Ruby" to your array of accomplishments. 

# How the program runs. I left the debugging in to prove that it adds to an array properly

	# Ruby :> ruby hashes.rb
	# What is the customer's name?
	# Denise Duffy
	# What are their favorite colors? Please separate with commas.
	# Orange, Red, Green
	# ["Orange", " Red", " Green"]
	# What are their favorite styles? Please separate with commas.
	# mid-century, arts and crafts, modern
	# "mid-century, arts and crafts, modern"
	# What is their light preference?
	# Lots of direct southern light
	# Would you like to update any data you just entered? (y or n)
	# y
	# Is it the name, color, style, or light?
	# style
	# What are their favorite styles?
	# Victorian
	# Do they have any other categories to discuss? (y/n)
	# y
	# What categories would you like to add?
	# Accomplishments
	# What are the specifics of this?
	# Used data structures in Ruby
	# Your customer, Denise Duffy, likes the following things:
	# name ==> Denise Duffy
	# colors ==> ["Orange", " Red", " Green"]
	# styles ==> ["mid-century", " arts and crafts", " modern"]
	# light ==> Lots of direct southern light
	# style ==> Victorian
	# Accomplishments ==> Used data structures in Ruby




















