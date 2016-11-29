=begin
class Puppy

	def initialize 
	p "Initialzing new puppy instance ..."
	@fur_length = ["short", "med", "long"].sample
	@fur_color = ["black", "brown"].sample
	@legs = 4
	@gender = ["male", "female"].sample
	end	

	# def fur_length
	# 	@fur_length
	# end	

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "woof\n" * int
  end	

  def roll_over
  	puts "roll_over"
  end
  
  def dog_years(int)
  	p int * 7
  end	

  def drink_water(int)
  	p "slurp" * int
	end
end	


coco = Puppy.new
coco.fetch("chuck-it ball")
coco.speak(5)
coco.roll_over
coco.dog_years(3)
coco.drink_water(9)
p coco
p coco.fur_length
p fur = coco.fur_length
=end


class Lesbians_Who_Tech
	attr_reader :bootcamp, :location # => lets you read
  attr_accessor :les_name, :fav_person # => lets you change and read variable

	def initialize (les_name,bootcamp,location,fav_person)
		  @les_name = les_name
			@bootcamp = bootcamp
			@location = location
			@fav_person = fav_person
  end	

  # getter
  # def bootcamp
  # 	 @bootcamp
  # end	 

  def hoola_hoop(minutes)
  	p "#{@les_name} spent #{minutes} minutes hoola_hooping with #{@fav_person}" 
  end	

  def drink(num)
  	puts "drink than dance\n" * num
	end  

	# setter method
	def new_favorite_person(fav_person) 
		@fav_person = fav_person # this works, but i want to pass it through the instance method
		puts "After all that drinking, #{@les_name} has an new favorite person and it's #{@fav_person}"
	end

end

# This creates a new instance of the class with paramenters to initialize @instancevariables
scholar = Lesbians_Who_Tech.new("Denise Duffy", "Dev Bootcamp", "SF", "Edie Windsor")
# denise = Lesbians_Who_Tech.new
scholar.hoola_hoop(5)
scholar.drink(2)
p scholar.bootcamp
scholar.les_name = "Sarah" 
p scholar.les_name
p scholar.fav_person

# reassign favorite person via new_favorite_person method
scholar.new_favorite_person("Notorious RGB")


les_name = ["Denise", "Melissa", "Jill"]
bootcamp = ["Dev Boot"]
location = ["SF", "Chicago", "Austin"]
fav_person = ["Edie Windsor", "Jill Scott", "Ashlyn Harris"]

# initialize hash
les_hash = {}

# Use a block to make 50 instances of your class.
50.times do |x|
	#les_hash[specific scholar] = value # => Lesbians_Who_Tech.new instance
	les_hash["ediewindsorscholar#{x}"] = Lesbians_Who_Tech.new(les_name.sample,bootcamp,location.sample,fav_person.sample)
end 
puts les_hash 

# .inspect is a way to print out the instance values of a hash
puts les_hash["ediewindsorscholar34"].inspect


# printing key name with the actual instance of the hash
les_hash.each do |scholar_num, scholar_info|

	  puts "#{scholar_num} ===> #{scholar_info}"   
end

# iterating throught the instance of this hash which is scholar_info
les_hash.each do |scholar_num, scholar_info|
	scholar_info.hoola_hoop(2)
	scholar_info.drink(3)
end












=begin other notes


class Puppy
  def initialize(name)
  	@name = name
  end
	
  def bark
  	puts "#{@name} says: Woof!"
  end
end

# we make an array of names to build puppies with
names = ["Fido", "Spot", "Duchess", "Ginger"]

# we make an empty container for our puppy collection
puppies = []

puts "Iterating through names list to create puppies ..."
names.each do |name|
  puts "Creating a puppy named #{name} ..."
  puppies << Puppy.new(name)
  puts "There are now #{puppies.length} Puppy instances in the array"
  puts "----"
end

puts "Testing each Puppy instance in the array to make sure it can bark ..."
puppies.each do |puppy|
  puppy.bark
end



# test_1 = Array.new
# test_2 = Array.new
# test_3 = Array.new
# test_4 = Array.new
# test_1 << 1 
# test_2 = [1,2,3,4]
# p test_1
# p test_2.each { |x| p x }

class Puppy
  def initialize(name, toy, food)
  @name = name
  @toy = toy
  @food = food
  end
   
  def name 
  @name
  end
end

coco = Puppy.new("Coco", "ball", "steak")
rover = Puppy.new("Rover", "bones", "steak")
fido = Puppy.new("Fido", "ball", "kibble")

p fido
=end
