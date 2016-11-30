# 6.3 Denise Duffy 11/28/2016

class Santa

	def initialize(santa_name, height, gender, ethnicity, age, reindeer_ranking)
		# p "Initializing Santa instance ..."
		@santa_name = santa_name
		@height = height
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer_ranking = reindeer_ranking
	end	

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!" 
	end	

	# basic getter method
	def nameofsanta
   	 @santa_name = santa_name
  end	 

  # Release 2
  # getter method
  def ageofsanta(num)
  	@age = num
  end	

  def celebrate_birthday(age)
  	@age = age + 1
  end	

  def get_mad_at(reindeer) 
  	
  			p reindeer
  			# reindeer_ranking.index(reindeer)

  			@reindeer_ranking << reindeer
  			@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer))  
  			# p @reindeer_ranking

  			
				# p @reindeer_ranking	  	
	end	

  # ??? need a setter method here
  def gender_reassign
  	@gender = gender_assignment
  end 	

  # very basic getter method
  def current_age
  	@age
  end	

  # very basic getter method
  def ethnicity
  	@ethnicity
  end	

end


# Release 1
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
belly_man = Santa.new("bob", 80, "male", "irish", 0, reindeer_ranking)
p belly_man
# belly_man.speak
# belly_man.eat_milk_and_cookies("oreo")
# p belly_man.ageofsanta(50)
p belly_man.get_mad_at("Dancer")
p belly_man


# @gender to be reassigned from outside the class definition.


# Release 2
# age Santa by one year
p belly_man.celebrate_birthday(40)

# take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings
#p get_mad_at("Vixen")


#santas[i].celebrate_birthday(age)
# santas[i].celebrate_birthday(age)



# santas = []
# santa_name = ["Hairy Hal", "Belly Bob", "Mr. No_fear_of_heights", "Cody Coldnose"]
# height = [80, 99, 87, 88]
# gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicity = ["irish", "italian", "german", "maori", "native american"]
# age = [0]
# raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]


# gender.length.times do |i|
# 	santas << Santa.new(santa_name.sample, height.sample, gender.sample, ethnicity.sample, age, raindeer_ranking)
# 	# for each instance of Santa.new, for the age variable I want to run the celebrate_birthday method
# end

# p santas









# p santas

# Release 2

# p nameofsanta
# p @santa_name




# previous used driver code
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
