
class Spaceship

	attr_accessor :ship_name
	attr_reader :maximum_speed

	def initialize(max_speed)
		@maximum_speed = max_speed
		@ship_name
	end

	def disable_shield
		"#{@ship_name} :shield disabled"
	end	

	def enable_shield
		"#{@ship_name}: shield enabled"
	end

	def warp_to(location)
		p "Traveling at #{maximum_speed}mps to #{location}"
		@location = location
	end	

end		

p uss_enterprise = Spaceship.new(200000)
p hms_andromeda = Spaceship.new(108277)
uss_enterprise.ship_name = "captain ashlyn's ship"
hms_andromeda.ship_name = "captain krieger's ship"
p uss_enterprise.ship_name
# uss_enterprise.maximum_speed = 25 # => produces a NoMethodError as expected
# p uss_enterprise.maximum_speed # => produces a NoMethodError as expected
p uss_enterprise.enable_shield
p hms_andromeda.disable_shield
p uss_enterprise.disable_shield
uss_enterprise.warp_to("Namibia")