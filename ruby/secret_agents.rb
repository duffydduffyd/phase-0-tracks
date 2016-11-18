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
