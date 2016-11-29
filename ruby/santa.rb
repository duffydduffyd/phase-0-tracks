# 6.3 Denise Duffy 11/28/2016

class Santa

	def initialize(santa_name, height, gender, ethnicity, age)
		# p "Initializing Santa instance ..."
		@santa_name = santa_name
		@height = height
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"].sample
	end	

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!" 
	end	

end	

# Release 1
# belly_man = Santa.new
# belly_man = Santa.new("female","irish")
# belly_man.eat_milk_and_cookies("oreo")
# p belly_man


# santas = []
# santa_name = ["Hairy Hal", "Belly Bob", "Mr. Nofearofheights", "Cody Coldnose"]
# height = [80, 99, 87, 88]
# gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicity = ["irish", "italian", "german", "maori", "native american"]
# age = [23, 66, 56, 80]

# gender.length.times do |i|
# 	santas << Santa.new(santa_name.sample, height.sample, gender.sample, ethnicity.sample, age.sample)
# end
# p santas

# Release 2





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
