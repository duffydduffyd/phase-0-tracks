def encrypt (string)
 string_length = string.length
 counter = 0
 new_string = ""

  while counter < string_length
  	if string[counter] == "z"
  		new_string += "a"
  	elsif string[counter] == " "
  		new_string += " "
  	else			
  		new_string += string[counter].next
  	end  
     counter += 1
  end   
  	puts new_string
end

# encrypt("abc") --> "bcd"
# encrypt ("zed") --> "afe"
# encrypt("abcdefghijklmnopqrstuvwxyz") --> bcdefghijklmnopqrstuvwxyza

# def decrypt(string)
# index = -1
# decrypt_length = string.length
# counter = 0
# decrypt_string = ""

# 	while counter < decrypt_length
# 			if string[index] == "a"
# 	  		decrypt_string += "z"
# 	  	elsif string[index] == " "
# 	  		decrypt_string += " "
# 	  	else
# 	  		decrypt_string += string[index]
# 			end
# 			index = index - 1
# 			counter += 1
# 	end
# 		puts decrypt_string
# end

# def decrypt(string)
# 	alphabet = "abcdefghijklmnopqrstuvwxyz"
# 	counter = 0
# 	index = 0
# 	decrypt_string = ""
# 		while counter < string.length
# 			decrypt_string += string[counter]
# #			p current_letter
# 			counter += 1
# 		end
# 		p decrypt_string	
# end

def decrypt(string)
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		string_length = string.length
		decrypt_string = ""

		while counter < string_length
# find out where the index of the string in postion 0 thru string_lenth is in the alphabet	 			
		index = alphabet.index(string[counter].to_s)
# subtract one letter from the alphabet
		new_letter = alphabet[index - 1].to_s		
	 			encrypt_letter = alphabet.index(decrypt_string[counter])
	 			decrypt_string += string[counter]
 				counter += 1
 		end
# 		p decrypt_string	
# end





decrypt("bcd")
# decrypt("afe")
# decrypt("abcdefghijklmnopqrstuvwxyz")

