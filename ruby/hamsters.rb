# Release 1 & 2: Gather hamsters of unknown origin 

age = nil # sets up variable to overwrite
adoptable = nil

puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "How loud is your hamster 1-10?"
volume = gets.chomp.to_i

puts "What is the fur color?"
fur_color = gets.chomp

puts "Is this hamster adoptable? (yes/no)"
adoptable = gets.chomp

# Add convert string to boolean statement 
if adoptable == "yes"
	 adoptable = true
	elsif adoptable == "no"
	 adoptable = false
end

puts "How old is our hamster?"
age = gets.chomp

# Release 3: Print to the Console

puts "The hamster's name is #{hamster_name}."
puts "On a scale of 1-10, the hamster's volume is #{volume}."
puts "The fur color is #{fur_color}."
puts "This hamster is adoptable: #{adoptable}."
puts "The hamster is #{age} years old."

