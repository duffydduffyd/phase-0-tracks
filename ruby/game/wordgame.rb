


# 1) We need to have a word to guess (user input, class generated)
# 2) We need to map _ for every letter
# 3) 


class Wordgame
	# attr_reader :mysteryword, :guess

	def initialize(word)
		@number_of_guesses = word.length # ==> 7
		@mysteryword = word.downcase # ==> "thisismyword"
		@mysteryword_word_array = word.downcase.split('') # ==> ["t", "h", "i", "s", "i", "s", "m", "y", "w", "o", "r", "d"]
		@underscore_array
		@user2_guess
	end


	def getter_mystery_word
		@mysteryword # ==> "thisismyword"
	end

	def mysteryword_array_getter # getter method
		@mysteryword_word_array
		# @mysteryword_word_array.each do |letter| # ==> ["t", "h", "i", "s", "i", "s", "m", "y", "w", "o", "r", "d"]
		# end
	end

	def map_letter_to_underscore
		@underscore_array = @mysteryword_word_array.map {|letter| "_" } # ==> ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_"]
	end

	def display_underscore_getter
		@underscore_array # ==> ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_"]
	end	

	def user2_input(letter_guess)
		@user2_guess = letter_guess.downcase # ==> "s"
	end	

	def include_letter(letter_guess)
		# this method determines if letter is in the array 
		@mysteryword_word_array.include?(letter_guess) # ==> letter_guess "s" => true
		# this method returns true or false
	end	 

	def map_guess_to_letter(letter_guess) # ==> "s"
		# input: user single letter guess @user2@_guess string 
		guess_letter_index =	@mysteryword_word_array.index { |x| x == letter_guess }  #=> returns 3, the first time the index of the letter "s" occurrs
		p guess_letter_index  # ==> 3
		# action: if the user2_guess string is equal to any string in @mystery_word_array then fill in that position in @underscore array that letter 
		new_under_array = @underscore_array.fill("letter_guess", guess_letter_index) # 
		p new_under_array # output: underscore_array with letter filled in
	end	

	def guess_the_word(user2_word_guess) # ==> 
		# input: user2 attempt to guess the word
		# action: does the user@_word_guess match @mysteryword? 
	  @mysteryword.eql?(user2_word_guess) # or use ===
		# output: true or false? =
	end	


end	






new_game = Wordgame.new('thisisMyword')

# p new_game.getter_mystery_word
# p new_game.mysteryword_array_getter
# p new_game.map_letter_to_underscore
# p new_game.display_underscore_getter
# p new_game.user2_input("s") 
# p new_game.guess_the_word("titanic")
 p new_game.map_guess_to_letter("s")
# p map_guess_to_letter("s")



# ---------- Scratch ideas

# if @mysteryword_word_array.at[0] == @user2_guess(0) 
# 	then @mysteryword_word_array[0] = @user2_guess(0)
# arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]

# arr.select { |a| a > 3 }     #=> [4, 5, 6]

# a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]

# if @mysterword_array[0..(@numberofguesses-1] === 

# def map_guess_to_letter(guess)

	# 	@mysteryword_word_array.map do |guess|
	# 			index = 0
	# 			while index <= @user2_guess.length
	# 				if @user2_guess(index) == letter
	# 					p letter 
	# 				end
	# 					#p @underscore_array[0] = guess
	# 				else 
	# 					p "nope" 	
	# 				end
	# 			index += 1	
	# 	end 

	# @number_of_guesses
		# action: repeat map_guess_to letter until number of guesses word.length is reached


		# Returns the index of the last object in self == to obj.
# a.rindex { |x| x == "b" } #=> 3



# a = %w{ a b c d e f }
# a.keep_if { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]

# a.map! {|x| x + "!" }

# a = %w{ a b c d e f }
# a.values_at(1, 3, 5, 7)       # => ["b", "d", "f", nil]

# a = [1, 2, 3, 4, 5, 0]
# a.take_while { |i| i < 3 }  #=> [1, 2]

# [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]

# a = [ "a", "b", "c", "d", "e" ]
# a.replace([ "x", "y", "z" ])   #=> ["x", "y", "z"]

