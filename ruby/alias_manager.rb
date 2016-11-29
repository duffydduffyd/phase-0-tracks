=begin README
5.5 Solo Challenge: Manipulating Strings with Iteration, Denise Duffy 11/22/16
I wanted to iterate with arrays on this exercise. However, the one I could only get this to work 
 with strings.
Left all my array solution work below so that I can come back to it
=end


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
	# This is my primitive solution for the letter shift. Vowels and consonants 
	# are both shifted via iteration through the index of the string.
	string_length = string.length
	index = 0
	new_string = ""
		while index < string_length
			if string[index] == " "
				new_string += " "
			elsif string[index] == "a"
				new_string +=	"e"
			elsif string[index] == "e"
				new_string += "i"
			elsif string[index] == "i"
				new_string +=	"o"
			elsif string[index] == "o"
			  new_string	+= "u"
			elsif string[index] == "u" 
				new_string += "a"
			elsif string[index] == "z"
				new_string	+= "b"
			elsif string[index] == "d"
				new_string += "d".next.next 
			elsif string[index] == "h"
				new_string += "h".next.next 
			elsif string[index] == "n"
				new_string +=	"n".next.next
			elsif string[index] == "t"
				new_string +=	"t".next.next 
			else 
				new_string += string[index].next 
			end 	
		index += 1
		end
		return new_string
		# puts new_string # => "faggz fipoti" which is correct

=begin office hours solution
vowel = "aeiou"
if my_letter = "u"
	new_letter = "a"		
else
	current_position = vowels.index(my_letter)
	new_position = current_position + 1
	new_letter = vowels[new_position]
end		
=end



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

# output
# ruby :> ruby alias_manager.rb
# What is your name?
# Denise Duffy
# Your name Denise Duffy is actually Faggz Fipoti
# Enter another name (or type quit):
# Wolf Blitzer
# Wolf Blitzer is actually Cmovbis Xumg
# Enter another name (or type quit):
# Ulf Johnson
# Ulf Johnson is actually Kujptup Amg
# Enter another name (or type quit):
# quit
# {:name=>"Denise Duffy", :spy_name=>"Faggz Fipoti"}
# {:name=>"Wolf Blitzer", :spy_name=>"Cmovbis Xumg"}
# {:name=>"Ulf Johnson", :spy_name=>"Kujptup Amg"}



















# --------------------------------------------------------------------------
# This is my scratch work in attempting this with arrays

# alphabet = "abcdefghijklmnopqrstuvwxyz"
# vowels = "aeiou"
# user_string = "denise duffy"

# alphabet_string_array = alphabet.split # => ["abcdefghijklmnopqrstuvwxyz"]
# alphabet_array = alphabet.chars # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
# vowel_array = vowels.chars # => ["a", "e", "i", "o", "u"] 
# user_array = user_string.chars # => ["d", "e", "n", "i", "s", "e", " ", "d", "u", "f", "f", "y"]
# no_vowel_alphabet = alphabet_array - vowel_array # => ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
# shiftedvowl_array = []

# p alphabet_array
# p vowel_array
# p user_array
# p no_vowel_alphabet
# def vowel_shift
# 	# this method shifts a vowel to the next vowel in the array
# 	vowels = "aeiou"
# 	user_string = "denise duffy"
# 	user_array = user_string.chars # => ["d", "e", "n", "i", "s", "e", " ", "d", "u", "f", "f", "y"]
# 	vowel_array = vowels.chars # => ["a", "e", "i", "o", "u"]
# 	# x = 0
# 		# while x <= user_array.length
# 			user_array.map! do |letter|
# 					x = 0
# 					if letter == vowel_array[x]
# 						print letter # => eeiu
# 						print vowel_array[x+1] # =>
# 						print vowel_array.next
# 					elsif letter == "u"
# 						print "a" 
# 						 # puts vowel_array[0]
# 					else
# 						print letter  #letter[x]
# 					end
# 					x += 1	
# 			end
# 		# x += 1		
# 		# end
# end	

# vowel_shift
# def consonant_shift
# 	# this methods shifts keeps the vowel and shifts the consonants in a name 
# 	alphabet = "abcdefghijklmnopqrstuvwxyz"
# 	vowels = "aeiou"
# 	alphabet_array = alphabet.chars # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]	
# 	vowel_array = vowels.chars # => ["a", "e", "i", "o", "u"]
# 	user_string = "denise duffy"
# 	user_array = user_string.chars
# 	no_vowel_alphabet = alphabet_array - vowel_array
# 	user_string = "denise duffy"
# 	user_array = user_string.chars
# 	x = 0
# 		while x <= no_vowel_alphabet.length	
# 			user_array.each do |letter|	
# 				# puts no_vowel_alphabet[x]
# 				if letter == no_vowel_alphabet[x]
# 					next_letter = letter.next
# 					puts next_letter
# 				end	
# 		end	
# 		x = x + 1	
# 		end
# end

# consonant_shift

# def rejoin_name
# 	#this method rejoins the name and capitalizes it
# 	array = ["d","u","f","f","y"," ","d","e","n","i","s","e"] 
# 	new_string = array.join.capitalize
# 	# cap_new_string = new_string
# end

# p rejoin_name # => "Duffy denise"


# puts "Enter your full name. Type done when you want to exit."
# real_name = gets.chomp 

# def vowel_shift(array)
# 	# method for replacing every vowel in an array with the next vowel in the alphabet 
# 	# ["g", "r", "e", "g", " ", "h", "a", "s", "e", "n", "a", "u", "e", "r"] => ["g","r","i","g"," ","h","e","s","i","n","e","a","i","r"]
	
# 	index = 0

# 	while index <= vowel_array.length 

# 			# compare each string memeber of user_array with each string member of vowel array by  
# 			# iterating through the index positioning of the vowel array. 
# 			user_array.each do |letter|
				
# 				# if letter is equal to vowel_array[x] shift it to next vowel in array
# 				if letter == "u"
# 					"a"

# 				elsif letter == vowel_array[index]
# 					shiftedvowl_array << vowel[index].next
				
# 				else	
# 					# if the letter does not match vowel array put the letter into shiftedvowl_array 
# 					# as it is to rebuild new array
# 					shiftedvowl_array << letter
# 				end 
# 			end	
# 	index += 1	
# 	end			
# end

# def consonant_shift(array)
# # keep vowels and shift every consonant to the next letter in the alphabet

# 	while counter <= user_array.length 
# 	# iterate through	

# 			letters.map! { |letter| letter.next }

# 	counter += 1
		
# end



# vowel_shift(user_array)


# array_alphabet = "abcdefghijklmnopqrstuvwxyz" 
# array_vowels = ["a","e","i","o","u"]
# ('a'..'z').to_a-%w(a e i o u)

# # real_name = "Denise Duffy"
# real_name = "Hi There"  


# p real_name

# # Downcase the name
# # Swap first and last name.
# flipped_name = real_name.split.rotate.join(" ").downcase 
# p flipped_name # => "there hi"  

# # Figure out how to get this into an array of characters: => 
# letters = flipped_name.chars # => ["t", "h", "e", "r", "e", " ", "h", "i"]
# p letters

# # Change all letters to the next letter
# next_letter = letters.map! { |letter| letter.next } # => 
# p next_letter # => current output is ["u", "i", "f", "s", "f", "!", "i", "j"]


# # Convert vowels to next vowel

# next_letter.each do |string|
	
# 	# # edge cases
# 	# if string == "!"
# 	# " "	
# 	# if string == "aa"
# 	# "a".next	

# 	# # vowel cases
# 	# elsif string=="b"
# 	# "e"
# 	# elsif string=="f"
# 	# "i"
# 	# elsif string=="j"
# 	# "o"
# 	# elsif string=="p"
# 	# "u"
# 	# elsif string=="v" 
# 	# "a"

# 	# # consonants need to skip over the vowel and go the next letter
# 	# elsif string=="a"
# 	# "b"
# 	# elsif string=="e"
# 	# "f"
# 	# elsif string=="i"
# 	# "j"
# 	# elsif string=="o"
# 	# "n"
# 	# elsif string=="u"
# 	# "t"
# 	# else
	 
# 	# end
		
# end

# puts next_letter


# #  Loop logic before .next is run. this might be better than the one above.
# #  next_letter.each do |string|
	
# # # case next_letter
# # 	if string == " "
# # 	" "	
	


# # 	end	
	
# # end



# # This is how it should be

# # use .downcase .split .rotate .join
# def swop_name
# end

# def vowels_shift


# end	

# def consanant_shift
# end	

# # use  
# def rejoin_name 
# end


# # User Interface

# puts "Enter your first and last name or type q to quit out of this:"
# real_name = gets.chomp

# if real_name = q
# 	break

# 	else puts "Your current name is #{real_name} an your fake name is #{fake_name}." 	

# end	






