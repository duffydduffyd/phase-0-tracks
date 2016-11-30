# 6.3 Denise Duffy 11/28/2016

class Santa
	# Release 3 Refactor with attr_reader and attr_accessor 
	  attr_reader :age, :ethnicity
	  attr_accessor :gender, :santa_name


	def initialize(santa_name, height, gender, ethnicity, age, reindeer_ranking)
		# p "Initializing Santa instance ..."
		@santa_name = santa_name
		@height = height
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer_ranking = reindeer_ranking
	end	

	# Release 2 getter and setter methods moved to the top for clarity
	# a setter method for an attribute

	# # getter method for attributes
	# def gender
	# 	@gender
	# end	

	#  # getter method for attributes
	# def santa_name
	# 	@santa_name
	# end	

 #  # getter method for attributes
 #  def age
 #  	@age
 #  end	

 #  # getter method for attributes
 #  def ethnicity
 #  	@ethnicity
 #  end	

 #  # def age(num)
 #  # 	@age = num
 #  # end

  def nameofsanta(santa_name)
   	 @santa_name = santa_name
  end	 

  def gender_reassign=(new_gender)
   	@gender = new_gender
  end 


  # Release 1
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!" 
	end	

	  	
	# Release 2
  def celebrate_birthday(age)
  	@age = age + 1
  end	

  def get_mad_at(reindeer) 
  			# p reindeer
  			@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer))
  			@reindeer_ranking << reindeer  
  			# p @reindeer_ranking
	end	
end


# Release 1
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
belly_man = Santa.new("Bob", 80, "male", "Irish", 0, reindeer_ranking)
# p belly_man
# belly_man.speak
# belly_man.eat_milk_and_cookies("oreo")
# p belly_man.ageofsanta(50)


# Release 2
# age Santa by one year
p belly_man.celebrate_birthday(40)

#take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.
p belly_man.get_mad_at("Dancer")
p belly_man

# @gender to be reassigned from outside the class definition.
p belly_man.gender_reassign = "lesbian"
p belly_man

# p belly_man.current_age
# p belly_man.ethnicity
# p belly_man.gender_reassign = "lesbian"

 
# belly_man.santa_name = "Sally"

puts "#{belly_man.santa_name} is #{belly_man.age} year old #{belly_man.ethnicity} #{belly_man.gender}. Sounds a bit like me, ho, ho, ho!" 
# => Bob is 41 year old Irish lesbian. Sounds a bit like me, ho, ho, ho!


# Release 3 Refactor with attr_reader and attr_accessor
# => Bob is 41 year old Irish lesbian. Sounds a bit like me, ho, ho, ho!


# Release 4 Build Many, Many Santas

santas = []
santa_name = ["Hairy Hal", "Belly Bob", "Mr. No_fear_of_heights", "Cody Coldnose"]
height = [80, 99, 87, 88]
gender = ["female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["irish", "italian", "german", "maori", "native american"]
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

#p belly_man.rand(0..140)


20.times do |i|
	santas << Santa.new(santa_name.sample, height.sample, gender.sample, ethnicity.sample, rand(140), reindeer_ranking.sample)
	p santas[i]
end

# output, wow, i did it!
#<Santa:0x007fc39c160820 @santa_name="Cody Coldnose", @height=99, @gender="male", @ethnicity="maori", @age=31, @reindeer_ranking="Donner">
#<Santa:0x007fc39c160640 @santa_name="Cody Coldnose", @height=87, @gender="female", @ethnicity="italian", @age=5, @reindeer_ranking="Vixen">
#<Santa:0x007fc39c160410 @santa_name="Belly Bob", @height=99, @gender="male", @ethnicity="italian", @age=106, @reindeer_ranking="Cupid">
#<Santa:0x007fc39c160258 @santa_name="Cody Coldnose", @height=88, @gender="female", @ethnicity="irish", @age=7, @reindeer_ranking="Blitzen">
#<Santa:0x007fc39c160050 @santa_name="Mr. No_fear_of_heights", @height=99, @gender="gender fluid", @ethnicity="irish", @age=32, @reindeer_ranking="Comet">
#<Santa:0x007fc39c15be10 @santa_name="Mr. No_fear_of_heights", @height=87, @gender="gender fluid", @ethnicity="italian", @age=128, @reindeer_ranking="Comet">
#<Santa:0x007fc39c15bc30 @santa_name="Mr. No_fear_of_heights", @height=87, @gender="female", @ethnicity="german", @age=136, @reindeer_ranking="Vixen">
#<Santa:0x007fc39c15ba50 @santa_name="Mr. No_fear_of_heights", @height=88, @gender="N/A", @ethnicity="irish", @age=66, @reindeer_ranking="Prancer">
#<Santa:0x007fc39c15b848 @santa_name="Mr. No_fear_of_heights", @height=80, @gender="N/A", @ethnicity="native american", @age=97, @reindeer_ranking="Rudolph">
#<Santa:0x007fc39c15b690 @santa_name="Hairy Hal", @height=87, @gender="bigender", @ethnicity="native american", @age=32, @reindeer_ranking="Cupid">
#<Santa:0x007fc39c15b488 @santa_name="Belly Bob", @height=99, @gender="bigender", @ethnicity="irish", @age=21, @reindeer_ranking="Rudolph">
#<Santa:0x007fc39c15b2a8 @santa_name="Cody Coldnose", @height=80, @gender="gender fluid", @ethnicity="italian", @age=15, @reindeer_ranking="Vixen">
#<Santa:0x007fc39c15b0f0 @santa_name="Mr. No_fear_of_heights", @height=99, @gender="gender fluid", @ethnicity="irish", @age=36, @reindeer_ranking="Vixen">
#<Santa:0x007fc39c15af10 @santa_name="Hairy Hal", @height=80, @gender="gender fluid", @ethnicity="italian", @age=35, @reindeer_ranking="Rudolph">
#<Santa:0x007fc39c15ad30 @santa_name="Hairy Hal", @height=88, @gender="female", @ethnicity="irish", @age=22, @reindeer_ranking="Rudolph">
#<Santa:0x007fc39c15ab50 @santa_name="Cody Coldnose", @height=88, @gender="N/A", @ethnicity="native american", @age=56, @reindeer_ranking="Blitzen">
#<Santa:0x007fc39c15a998 @santa_name="Cody Coldnose", @height=88, @gender="female", @ethnicity="maori", @age=66, @reindeer_ranking="Cupid">
#<Santa:0x007fc39c15a790 @santa_name="Belly Bob", @height=87, @gender="gender fluid", @ethnicity="german", @age=53, @reindeer_ranking="Dancer">
#<Santa:0x007fc39c15a588 @santa_name="Cody Coldnose", @height=99, @gender="gender fluid", @ethnicity="italian", @age=64, @reindeer_ranking="Cupid">
#<Santa:0x007fc39c15a3a8 @santa_name="Hairy Hal", @height=87, @gender="bigender", @ethnicity="italian", @age=21, @reindeer_ranking="Cupid">



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
