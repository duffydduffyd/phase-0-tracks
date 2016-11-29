# 6.3 Denise Duffy 11/28/2016

class Santa

	def initialize(santa_name, height, gender, ethnicity, age)
		# p "Initializing Santa instance ..."
		@santa_name = santa_name
		@height = height
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		# @raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"].sample
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

  def ageofsanta
  	@age 
  end	

end


# Release 1
# belly_man = Santa.new
belly_man = Santa.new("bob", 80, "male", "irish", 0)
belly_man.eat_milk_and_cookies("oreo")


# These two statements don't work
# trying to write a getter method
belly_man.ageofsanta
# trying to print the age of santa
belly_man.age





# santas = []
# santa_name = ["Hairy Hal", "Belly Bob", "Mr. Nofearofheights", "Cody Coldnose"]
# height = [80, 99, 87, 88]
# gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicity = ["irish", "italian", "german", "maori", "native american"]
# age = [0]

# gender.length.times do |i|
# 	santas << Santa.new(santa_name.sample, height.sample, gender.sample, ethnicity.sample, age)
# end

# p santas

# office hours
# why doesn't this print that last state the instance variable @santa_name?
# instance.variable 
# Santa:0x007f9722968ed.santa_name
# goal is to assign the name of santa to the last santa name
# .nameofsanta
# p @santa_name

# How to I run this and call the ageofsanta method to add?






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
