# Virus Predictor, Denise Duffy and Vilde Vevantne

require_relative 'state_data' #require_relative means look inside the current directory where the program is. 
#require means look for it at a particular place in the file system.

class VirusPredictor
 attr_reader :population_density, :population, :state
 
 # Sets up the instance variables with information provided by state_data
 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
   @state
   @speed
 end
 
 # Compilation of presdicted_deaths and speed_of_spread
 def virus_effects
   predicted_deaths
   speed_of_spread
 end
 
 # How many are expected to die based on density 
 def predicted_deaths
   # predicted deaths is solely based on population density
   
  case 
   when @population_density >= 200 
     @number_of_deaths = (@population * 0.4).floor
   when @population_density >= 150 
     @number_of_deaths = (@population * 0.3).floor
   when @population_density >= 100
     @number_of_deaths = (@population * 0.2).floor
   when @population_density >= 50
     @number_of_deaths = (@population * 0.1).floor
   else 
     @number_of_deaths = (@population * 0.05).floor
   end
 end

 # Determines how fast it spreads based on density
 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.
   @speed = 0.0

  case 
   when @population_density >= 200
     @speed = 0.5
   when @population_density >= 150
     @speed = 1
   when @population_density >= 100
     @speed = 1.5
   when @population_density >= 50
     @speed = 2
   else
     @speed = 2.5
   end

 end

  def print_report
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak"
    puts " and will spread across the state in #{@speed} months.\n\n"
  end 



end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

# STATE_DATA.each do |key, value|
#  VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
# end

STATE_DATA.each do |key, value|
 # VirusPredictor.new(key, value[:population_density], value[:population]).print_report
 outcomes = VirusPredictor.new(key, value[:population_density], value[:population])  
 outcomes.virus_effects
 outcomes.print_report
end


# VirusPredictor.new("state", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population]).virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#-----------

# Comment Area
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The outer nest hash is made with the traditinal =>, the other hash the more up to date with the ":" syntax.

# What does require_relative do? How is it different from require?
# Require relative means the file is in the same directory as the program file. Require means it's 
# somewhere in the file structure that you have to point to.

# What are some ways to iterate through a hash?
# Any hash block method will iterate nicely over a hash. You can call a .each, *note*.map(works only for arrays). 
# There are a bunch inbuilt methods the .keys?

# Basic .each iteration
#   hash.each do |key, value|
#    puts key
#    puts value
#   end

# A bunch of blocks:
# any? [{ |(key, value)| block }] → true or false
# delete(key) {| key | block } → value
# delete_if {| key, value | block } → hsh
# each_pair {| key, value | block } → hsh
# each_value {| value | block } → hsh
# fetch(key) {| key | block } → obj
# keep_if {| key, value | block } → hsh
# merge(other_hash){|key, oldval, newval| block} → 
# reject {|key, value| block} → a_hash
# reject! {| key, value | block } → hsh or nil

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# If you make them global variables then they don't need to be passed in. 

# What concept did you most solidify in this challenge?
# Calling data from an external source and using hash iteration to run new instances 
# of a class of outputing it's hash data. The block of an .each statement creates a new scope 
# for your variable so you don't accidentally modify the original value.
# Also caaw "when" loops are pretty but don't work with boolean very well.


#------------------