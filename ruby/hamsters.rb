# Denise Duffy and Maureen Riley 11/15/16 Peer Pair

# Release 1 & 2: Gather hamsters of unknown origin 

# Sets up variable to overwrite

puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "How loud is your hamster 1-10?"
volume = gets.chomp.to_i

puts "What is the fur color?"
fur_color = gets.chomp

puts "Is this hamster adoptable? (yes/no)"
adoptable = gets.chomp

# First attempt to convert to boolean statement. This does work. It might not be as flexible with user input typos.

# if adoptable == "yes"
# 	 adoptable = true
# 	elsif adoptable == "no"
# 	 adoptable = false
# 	else adoptable = nil 
# end

# Second attempt to convert to boolean statement. More flexible with user input but less flexible with output.
if adoptable[0] == "Y"
	 	adoptable = true
	elsif adoptable[0] == "y"
	 	adoptable = true	 
	elsif adoptable[0] == "N"
		adoptable = false
	elsif adoptable[0] == "n"
	 	adoptable = false
	else 
		adoptable = nil 
end

puts "How old is our hamster?"
age = gets.to_i

# Deal with edge case of no input
if age == ""
  age = "Not Sure"
end


# Release 3: Print to the Console

puts "The hamster's name is #{hamster_name}."
puts "On a scale of 1-10, the hamster's volume is #{volume}."
puts "The fur color is #{fur_color}."
puts "This hamster is adoptable: #{adoptable}"
puts "The hamster is this age: #{age}"

