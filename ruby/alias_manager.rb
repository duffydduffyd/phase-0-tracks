# 5.5 Solo Challenge: Manipulating Strings with Iteration 
# by Denise Duffy 11/22/16


real_name = "Denise Duffy"
p real_name # => "Denise Duffy"

# Downcase the name
# Swap first and last name.
short_name = real_name.downcase # => "denise duffy"
p short_name 

flipped_name = short_name.split.reverse # => ["duffy", "denise"]
p flipped_name

# Figure out how to get this into an array of characters: => ["d","u","f","f","y"," ","d","e","n","i","s","e"]
# No clear built in method to do this. 




 # Change all letters to the next letter
def next_letter (x)
 	puts "hello"
end

next_letter(a)

# example a.each {|x| print x, " -- " }


# real_name.each {|letter| letter.next }

# real_name.map do |encrypt|
# 	 	puts real_name.next
# end



# Change all the vowels to the next vowel
# An array of vowels, compare one array to another
# vowels = 'a e i o u'
# p vowels.split




# Upcase name

# If ! then add a space kind of thing