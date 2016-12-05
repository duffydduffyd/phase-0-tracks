
class Wordgame
	# attr_accessor :mysteryword, :guess

	def initialize(word)
		@word = word
		@number_of_guesses = word.length # ==> 7
		@mysteryword = word.downcase # ==> "thisismyword"
		@mysteryword_word_array = word.downcase.split('') # ==> ["t", "h", "i", "s", "i", "s", "m", "y", "w", "o", "r", "d"]
		@underscore_array
		@user2_guess
		@mysterword_hash = {}
	end


	def getter_mystery_word
		@mysteryword # ==> "thisismyword"
	end

	def mysteryword_array_getter # getter method
		@mysteryword_word_array
		# @mysteryword_word_array.each do |letter| # ==> ["t", "h", "i", "s", "i", "s", "m", "y", "w", "o", "r", "d"]
		# end
	end

	# attempt at comparing keys and values in hash as a solution 
	# def hash_maker(word)
	# 	@mysteryword_word_array = word.downcase.split('')
	# 	# convert to hash with a default value of "_"
	# 	@mysteryword_word_array.each { |index| @mysterword_hash[index] = '_' } # attempting to make a hash our of mystery_word_array with a default value of "_"
	# 	p @mysteryword_hash  # ==> returning nil
	# end	

	# def map_letter_to_underscore()
	# 	@underscore_array = @mysteryword_word_array.map {|letter| "_" } # ==> ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_"]
	# 	return @underscore_array
	# end

	# def display_underscore_getter
	# 	@underscore_array # ==> ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_"]
	# end	

	# def user2_input(letter_guess)
	# 	@user2_guess = letter_guess.downcase # ==> "s"
	# end	

	# def include_letter(letter_guess)
	# 	# this method determines if letter is in the array 
	# 	@mysteryword_word_array.include?(letter_guess) # ==> letter_guess "s" => true
	# 	# this method returns true or false
	# end	 

	# def map_guess_to_letter(letter_guess) # ==> "s"
	# 	# input: user single letter guess @user2@_guess string 
	# 	guess_letter_index =	@mysteryword_word_array.index { |x| x == letter_guess }  #=> returns 3, the first time the index of the letter "s" occurrs
	# 	p guess_letter_index  # ==> 3
	# 	# action: if the user2_guess string is equal to any string in @mystery_word_array then fill in that position in @underscore array that letter 
	# 	new_under_array = @underscore_array.fill("letter_guess", guess_letter_index) # 
	# 	p new_under_array # output: underscore_array with letter filled in
	# end

	def init_game

		# indicates number of guesses based on word length
		i = @word.length
		# array is for user guesses
		letter_guesses = []

		p "You Have #{@number_of_guesses-1} Number Of Guesses."

		# [1] as long as you have more than 1 guess, it will loop
		while i >= 1 do
			puts "[Guess A Letter] -->"
			user_guess = gets.chomp

			if letter_guesses.include?(user_guess)
				p 'You have already guessed that letter'
				i+=1
			else
				if user_guess == @word
					return 'you won!'
				end
				# Need to reveal letter from underscore.
				puts @word.tr("^#{user_guess}", "_")
				letter_guesses.push(user_guess)
			end
			i -= 1
			p "You have #{i} number of guesses left!"
		end
		# END [1]

		# If Else letter_guesses include the original word
		# find if the letters match the word
		if letter_guesses.include?(@word)
			p "The Word was: #{@word}"
			return "You won!"
		
		# Another solution explored
		#  placeholder = ''
  	# sample_word.chars { |char| 
  	#   placeholder += (guessed_words.include? char)? char : '_'
  	# }
	  #	placeholder	

		else
			p "The Word was: #{@word}"
			return "You lost!"
		end

		return @word
	end

	# def guess_the_word(user2_word_guess) # ==> 
	# 	# input: user2 attempt to guess the word
	# 	# action: does the user@_word_guess match @mysteryword? 
	#   @mysteryword.eql?(user2_word_guess) # or use ===
	# 	# output: true or false? ==> true
	# end	

	def guess_count
		 @number_of_guesses -= 1
	end	 

end	

# Choose what word you want to use
p "what is the word you want to use?"
user_word = gets.chomp

# Create new instance
new_game = Wordgame.new(user_word) 
p new_game.init_game


# current output
# game :> ruby wordgame.rb
# "what is the word you want to use?"
# peppery
# "You Have 6 Number Of Guesses."
# [Guess A Letter] -->
# p
# p_pp___
# "You have 6 number of guesses left!"
# [Guess A Letter] -->
# e
# _e__e__
# "You have 5 number of guesses left!"
# [Guess A Letter] -->
# r
# _____r_
# "You have 4 number of guesses left!"
# [Guess A Letter] -->
# y
# ______y
# "You have 3 number of guesses left!"
# [Guess A Letter] -->
# d
# _______
# "You have 2 number of guesses left!"
# [Guess A Letter] -->
# r
# "You have already guessed that letter"
# "You have 2 number of guesses left!"
# [Guess A Letter] -->
# g
# _______
# "You have 1 number of guesses left!"
# [Guess A Letter] -->
# b
# _______
# "You have 0 number of guesses left!"
# "The Word was: peppery"
# "You lost!"








# p new_game.mysteryword_array_getter
# p "=============================="
# p new_game.map_letter_to_underscore()
# p "=============================="
# p new_game.user2_input('d')
# p "=============================="
# p new_game.include_letter('d')
# p "=============================="
# p new_game.guess_the_word('f')
# p "=============================="
# p new_game.guess_count

# game_test = new_game.hash_maker("thisismyword")
#  p new_game.getter_mystery_word 
# p new_game.mysteryword_array_getter
# p new_game.map_letter_to_underscore
# p new_game.display_underscore_getter
# p new_game.user2_input("s") 
# p new_game.guess_the_word("titanic")
# p new_game.map_guess_to_letter("s")
# p map_guess_to_letter("s")
# p new_game.hash_maker("thisismyword")


# ---------- Scratch ideas


# a = [ "a", "b", "c" ]
# a.each_index {|x| print x, " -- " }

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

