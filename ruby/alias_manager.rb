# 5.5 Solo Challenge: Manipulating Strings with Iteration 
# by Denise Duffy 11/22/16


# real_name = "Abcdefghijk Lmnopqrstuvwxyz" 
# real_name = "Denise Duffy"
real_name = "Hi There"  


p real_name

# Downcase the name
# Swap first and last name.
flipped_name = real_name.split.rotate.join(" ").downcase 
p flipped_name # => "there hi"  

# Figure out how to get this into an array of characters: => 
letters = flipped_name.chars # => ["t", "h", "e", "r", "e", " ", "h", "i"]
p letters

# Change all letters to the next letter
next_letter = letters.map! { |letter| letter.next } # => 
p next_letter # => current output is ["u", "i", "f", "s", "f", "!", "i", "j"]


# Convert vowels to next vowel

next_letter.each do |string|
	
	# edge cases
	if string == "!"
	" "	
	if string == "aa"
	"a".next	

	# vowel cases
	elsif string=="b"
	"e"
	elsif string=="f"
	"i"
	elsif string=="j"
	"o"
	elsif string=="p"
	"u"
	elsif string=="v" 
	"a"

	# consonants need to skip over the vowel and go the next letter
	elsif string=="a"
	"b"
	elsif string=="e"
	"f"
	elsif string=="i"
	"j"
	elsif string=="o"
	"n"
	elsif string=="u"
	"t"
	else
	 
	end
		
end

puts next_letter


#  Loop logic before .next is run. this might be better than the one above.
#  next_letter.each do |string|
	
# # case next_letter
# 	if string == " "
# 	" "	
# 	elsif string=="a"
# 	"e"
# 	elsif string=="e"
# 	"i"
# 	elsif string=="i"
# 	"o"
# 	elsif string=="o"
# 	"u"
# 	elsif string=="u" 
# 	"a"
# 	elsif string=="z"
# 	"b"
# 	elsif string=="d"
# 	"d".next.next 
# 	elsif string =="h"
# 	"h".next.next 
# 	elsif string =="n"
# 	"n".next.next
# 	elsif string=="t"
# 	"t".next.next 
# 	else 
# 		string.next 
# 	end 	


# 	end	
	
# end



# This is how it should be

# use .downcase .split .rotate .join
def swop_name
end

def replace_vowels
end	

def next_letter
end	

# use  
def rejoin_name 
end


# User Interface

puts "Enter your first and last name or type q to quit out of this:"
real_name = gets.chomp

if real_name = q
	break

	else puts "Your current name is #{real_name} an your fake name is #{fake_name}." 	

end	






