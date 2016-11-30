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

end

protester = Protester.new("Erica")
p protester.march("Market")

# p protester.yell_angrily("A nation, divided, will never be united")

# This is a Class Method call.
p Protester.banner("End Raciscm")
"Our banner says End Raciscm"

# This is a Class Method call but can I also access Shout yell_angrily?
p protester.yell_angrily(Protester.banner("We are frustrated"))
# => "My sign says We are frustrated!!! :("


 


















