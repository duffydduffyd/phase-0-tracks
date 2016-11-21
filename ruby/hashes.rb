
# Initialize varibles needed

# Enter a customer information, extra credit: set expectation that there are multiple customers and store that value

# Store all information in a hash with a unique customer number
	
# extra credit: make the values into an array by prompting user add commas after their thoughts.
# convert the array to a string

# Give customer opportunity to update the key, ie, Is there any other topic to add? 
# What should we know about this? No loop, just once. else, none. 

# Also if they tried to update the key then ask for a new value. Strings have methods 
# that will turn them into symbols. s = 'cat'.to_sym #=> :cat

# Print out customer number and hash

# Ask if they would like to enter another

customer = Hash.new 

puts "What is the customer's name?"
customer_name = gets.chomp

puts "What are their favorite colors?"
fav_colors = gets.chomp

puts "What are their favorite styles?"
fav_styles = gets.chomp

puts "What is their light preference?"
light_preference = gets.chomp

customer {
	:name => customer_name
	:colors => fav_colors,
	:styles => fav_styles, 
	:light => light_preference
}


p customer

# trying to do a 
puts "Do they have any other categories to discuss? (y/n)"
another_category = gets.chomp	
		
	case another_category	
	when "y" 
		puts "What categories would you like to add?"
		user_category = gets.chomp
		new_category = user_category.to_sym
		
		puts "What are the specifics of this?"
		specifics = gets.chomp
		# Add new key and value to hash
	
		customer[:new_category] = specifics
	
	when "n"
		break	
	end	

puts "Your customer, #{customer_name}, likes the following things" 
print customer

# office hours questions
# is it better to have the customer_name as a key and value pair and call the hash 
# something generic like customer?

# I would like the keys to be arrays, but i can't even get strings to work

# How do I print this in a block?
# h.each {|key, value| puts "#{key} is #{value}" }

# add "used data structures in Ruby" to your array of accomplishments. 



















