

class Wordgame
	# attr_reader :mysteryword, :guess

	@mysteryword = "running"

	def initialize(word)
		@mysteryword = word.downcase
		@number_of_guesses = word.length
		@mysteryword_array = word.downcase.split
	end	

	def convert_to_array
		
	end	


	def getter_mystery_word
		@mysteryword 
	end	



	def expand_mystery_word
		expandedword = @mysteryword.map {|c| print c, '_' } # => r_u_n_n_i_n_g_
		display_string = expandedword.delete "r"
	end	

end	

