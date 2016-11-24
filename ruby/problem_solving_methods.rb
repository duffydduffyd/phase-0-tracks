# Solving Problems with Data Structures


array = [5, 10, 15, 25]



def search_array(array, integer)
	# determine if integer is in the array and return index
	index = 0
	array.each do |number|
	  if number == integer
	  	return index
	  end	
		index = index + 1
		end
	return nil	
end

p search_array(array, 7)


def search_array2(array, integer)
	array.length.times do |index|
		return index if array[index] == integer
	end	
	return nil
end



# array.each_index {|number| p number}





# finds the index of the number
# array.each_index {|number| p number}





# def search_array(x, y)
# 	array = [5, 10, 15, 25]
# end

# p search_array






# array = [5, 10, 15, 25]

# array.each_index {|number| p number}

# array.each do |number, index|
# 	puts array[index] 
# 	x = 3
# 	p array[x]
# end

# def search_array(x, y)
# 	array = [5, 10, 15, 25]
# end

# p search_array




# Notes from coaching session

=begin
new_index = index + number % array.length
new_index will always be inside the array

=end


# def word_parser(string)
#   alphabet = ('a'..'z').to_a
#   vowels = %w(a e i o u)
#   consonants = alphabet - vowels
#   changed_string = string.split('').map do |character|
#     if vowels.include?(character)
#       vowel_shift(character,3)
#       vowel_shift2(character,3)
#     else
#       consonant_shift(character)  
#     end
#   end
# end

# def vowel_shift(char, shift=1)
#   alphabet = ('a'..'z').to_a
#   vowels = %w(a e i o u)
#   consonants = alphabet - vowels
#   p [char, 'vowel']
#   if vowels.index(char) < vowels.length-shift
#     new_index = vowels.index(char)+shift
#   else
#     new_index = vowels.index(char)+shift - vowels.length
#   end
#   p [char, vowels[new_index] ] 
# end

# def vowel_shift2(char, shift=1)
#   alphabet = ('a'..'z').to_a
#   vowels = %w(a e i o u)
#   consonants = alphabet - vowels
#   p [char, 'vowel']
#   new_index = (vowels.index(char)+shift) % vowels.length
#   p [char, vowels[new_index]]
# end

# def consonant_shift(char)
#   alphabet = ('a'..'z').to_a
#   vowels = %w(a e i o u)
#   consonants = alphabet - vowels
#   p [char, 'cons']
# end


# word_parser('wombat')

