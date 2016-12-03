


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

	def user2_input(guess)
		@user2_guess = guess.downcase # ==> "s"
	end	

	def map_guess_to_letter(guess)
		if @user2_guess == @mysteryword_word_array[0]
			puts "great"
		else print
			puts "nope" 	
		end	
	end	

end	

new_game = Wordgame.new('thisisMyword')

p new_game.getter_mystery_word
p new_game.mysteryword_array_getter
p new_game.map_letter_to_underscore
# p new_game.display_underscore
p new_game.user2_input("T") 
p new_game.map_guess_to_letter(@user2_guess)
