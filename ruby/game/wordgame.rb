


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

	def user2_input(guess_letter)
		@user2_guess = guess_letter.downcase # ==> "s"
	end	

	def map_guess_to_letter
		# input: user single letter guess @user2@_guess string 
		# action: if the user2_guess string is equal to any string in @mystery_word_array then fill in that position in @underscore array that letter 
		# output: underscore_array with letter filled in
	end	

	def guess_the_word(user2_word_guess)
		# input: user2 attempt to guess the word
		# action: does the user@_word_guess match @mysteryword? 
		# output: true or false?
	end	



end	

# new_game = Wordgame.new('thisisMyword')

# p new_game.getter_mystery_word
# p new_game.mysteryword_array_getter
# p new_game.map_letter_to_underscore
# # p new_game.display_underscore
# p new_game.user2_input("s") 
# p new_game.map_guess_to_letter(@user2_guess)





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
