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

def decrypt(secret_string)
decrypt_length = secret_string.length
counter = 0
decrypt_string = ""

	while counter < string_length
		decrypt_string += secret_string[counter-1]
	end
	counter = counter - 1
end
