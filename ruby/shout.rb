# Denise Duffy 6.4 Writing a Module 

# This is a Standalone Module
# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words.upcase + "!" + " Woo hoo!"
#   end	

# end

# p Shout.yell_angrily("omg")
# p Shout.yell_happily("omg")



# Write a Mixin Module
module Shout

	def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
  	words.upcase + "!" + " Woo hoo!"
  end	

end

# Class to use the Shout module
class Coach

	include Shout

	def initialize
	end	

	def self.blow_whistle
		puts "Whistle noise"
	end	

	def score_goal(name)
		"#{name} put the ball in the back of the net"
	end	

	def yellow_card(name)
		name "clobbered the left-back"
	end		

end	

jill = Coach.new
# p jill.yell_angrily("No way Ref")
# p jill.yell_happily("Nice shot") # => why doesn't this work? Is a module only one method?
# Coach.blow_whistle
# p jill.score_goal("Barb")

# Another Class to use the Shout module


class Protester

	attr_reader :protestor_name	

	include Shout

	 def initialize(name)
	 	@protester_name = name
	 end	

	 def self.banner(title)
	 	"The banner we all march under says #{title}" 
	 end

	 def march(street)
	 	"#{@protester_name} is marching down #{street} street."
	 end	

	 def long_march(streets)
	 	streets.each do |street|
	 		p march(street)
	 	end
	 end

	 def self.biglongmarch(people,streets)
	 	people.each do |person|
	 		self.new(person).long_march(streets)
	 		# streets.each do |street|
	 		# 	thing = self.new(person)
	 		# 	# p thing.class
	 		# 	p thing.march(street)
	 		# 	self.new(person).march(street)
 			# end
	 	end
	 end	
end

protester = Protester.new("Erica")
p protester.march("Market")

# p protester.yell_angrily("A nation, divided, will never be united")

# This is a Class Method call.
p Protester.banner("End Raciscm")
# "Our banner says End Raciscm"

# This is a Class Method call but can I also access Shout yell_angrily?
p protester.yell_angrily(Protester.banner("We are frustrated"))
# => "My sign says We are frustrated!!! :("

streets = ["Market", "Mission", "Valencia", "Haight"]
people = ["Larry", "Sally", "Denise", "Ben"]

protester.long_march(streets)
Protester.biglongmarch(people,streets) 


# output
# "Erica is marching down Market street."
# "The banner we all march under says End Raciscm"
# "The banner we all march under says We are frustrated!!! :("
# "Erica is marching down Market street."
# "Erica is marching down Mission street."
# "Erica is marching down Valencia street."
# "Erica is marching down Whitney street."
# "Larry is marching down Market street."
# "Larry is marching down Mission street."
# "Larry is marching down Valencia street."
# "Larry is marching down Whitney street."
# "Sally is marching down Market street."
# "Sally is marching down Mission street."
# "Sally is marching down Valencia street."
# "Sally is marching down Whitney street."
# "Denise is marching down Market street."
# "Denise is marching down Mission street."
# "Denise is marching down Valencia street."
# "Denise is marching down Whitney street."
# "Ben is marching down Market street."
# "Ben is marching down Mission street."
# "Ben is marching down Valencia street."
# "Ben is marching down Whitney street."


