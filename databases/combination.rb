mockdatabase = {}

# puts "What is your name?"
# string = gets.chomp
# string => "Denise Duffy"

def switch_name(string)
	# This method switches and downcases the first and last name.
	flipped_name = string.split.rotate.join(" ").downcase
	# p flipped_name # => duffy denise
end	
# switch_name(string)

def letter_shift(string)
	
vowel = "aeiou"
if my_letter = "u"
	new_letter = "a"		
else
	current_position = vowels.index(my_letter)
	new_position = current_position + 1
	new_letter = vowels[new_position]
end		

def capitalize(string) # "faggz fipoti" => "Faggz Fipoti"
	# This method takes a string, splits it creating an array, capitalizes, and joins it back again
	string.split.map {|letter| letter.capitalize}.join(' ')
end

def all_together(name)
		switched = switch_name(name)
		new_name = letter_shift(switched)
		capital_new_name = capitalize(new_name)
end

# puts "Your name #{string} is actually #{all_together(string)}" # => Your name Denise Duffy is actually Faggz Fipoti
# Created an array of hashes. Had trouble iterating with hashes so this is the make it work solution.
# mockdatabase << {:name => string, :spy_name => all_together(string)}
# mockdatabase :name => string, :spy_name => all_together(string)}


loop do
	puts "Enter a name (or type quit):"
	string = gets.chomp
	break if string == "quit"
	puts "#{string} is actually #{all_together(string)}" 
	# puts all_together(string)
	# push more data to the an array of hashes (need to improve project to add to a hash rather than array)	
	# mockdatabase["Denise Duffy"] = "faggz fipoti"
	mockdatabase[string] = all_together(string)

end

# mockdatabase = {
# 	"Denise Duffy" => "faggz fipoti"
# }

# 
# print mockdatabase
mockdatabase.each do |key, value|
	# puts key, value
  puts "#{key} ===> #{value}"   
end