def encrypt (string)
 counter = 0
  while counter < string.length
     new_string = string[counter].next
     puts new_string
     counter += 1
  end
end

encrypt("abc")