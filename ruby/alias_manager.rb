# 5.5 Solo Challenge: Manipulating Strings with Iteration 
# by Denise Duffy 11/22/16

alphabet = "abcdefghijklmnopqrstuvwxyz"
vowels = "aeiou"
user_string = "denise duffy"

alphabet_string_array = alphabet.split # => ["abcdefghijklmnopqrstuvwxyz"]
alphabet_array = alphabet.chars # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
vowel_array = vowels.chars # => ["a", "e", "i", "o", "u"] 
user_array = user_string.chars # => ["d", "e", "n", "i", "s", "e", " ", "d", "u", "f", "f", "y"]
no_vowel_alphabet = alphabet_array - vowel_array # => ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
shiftedvowl_array = []

p alphabet_array
p vowel_array
p user_array
p no_vowel_alphabet


def vowel_shift
	vowels = "aeiou"
	user_string = "denise duffy"
	user_array = user_string.chars # => ["d", "e", "n", "i", "s", "e", " ", "d", "u", "f", "f", "y"]
	vowel_array = vowels.chars # => ["a", "e", "i", "o", "u"]
	x = 0
	while x <= user_array.length
			user_array.each do |letter|
				if letter == vowel_array[x]
					print letter # => eeiu
					# p new_letter
				else
					# print "  nope  "
				end	
			end		
	x += 1
	end
end	

vowel_shift

def consonant_shift
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	vowels = "aeiou"
	alphabet_array = alphabet.chars # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]	
	vowel_array = vowels.chars # => ["a", "e", "i", "o", "u"]
	user_string = "denise duffy"
	user_array = user_string.chars
	no_vowel_alphabet = alphabet_array - vowel_array
	user_string = "denise duffy"
	user_array = user_string.chars
	

	x = 0
		while x <= no_vowel_alphabet.length	
			user_array.each do |letter|	
				# puts no_vowel_alphabet[x]
				if letter = no_vowel_alphabet[x]
					next_letter = letter.next
					puts next_letter
				end	
			end	
		x = x + 1	
		end
end
consonant_shift

def switch_name
	real_name = "Denise Duffy"
	flipped_name = real_name.split.rotate.join(" ").downcase
	print flipped_name # => duffy denise
end	
switch_name

def rejoin_name
end
rejoin_name


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
# # 	elsif string=="a"
# # 	"e"
# # 	elsif string=="e"
# # 	"i"
# # 	elsif string=="i"
# # 	"o"
# # 	elsif string=="o"
# # 	"u"
# # 	elsif string=="u" 
# # 	"a"
# # 	elsif string=="z"
# # 	"b"
# # 	elsif string=="d"
# # 	"d".next.next 
# # 	elsif string =="h"
# # 	"h".next.next 
# # 	elsif string =="n"
# # 	"n".next.next
# # 	elsif string=="t"
# # 	"t".next.next 
# # 	else 
# # 		string.next 
# # 	end 	


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






