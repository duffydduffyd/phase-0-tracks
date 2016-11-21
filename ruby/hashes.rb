
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

customer = {}
customer_name = ""  
fav_colors = ""
fav_styles = ""
light_preference = ""

puts "What is the customer's name?"
customer_name = gets.chomp

puts "What are their favorite colors?"
fav_colors = gets.chomp

puts "What are their favorite styles?"
fav_styles = gets.chomp

puts "What is their light preference?"
light_preference = gets.chomp

customer_name {
	:colors => fav_colors,
	:styles => fav_styles, 
	:light => light_preference
}

















