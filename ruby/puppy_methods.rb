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
  attr_accessor :les_name, :fav_person # => lets you change variable

	def initialize (les_name,bootcamp,location,fav_person)
		  @les_name = les_name
			@bootcamp = bootcamp
			@location = location
			@fav_person = fav_person
  end	

  # def bootcamp
  # 	 @bootcamp
  # end	 

  def hoola_hoop(minutes)
  	p "#{@les_name} spent #{minutes} minutes hoola_hooping with #{@fav_person}" 
  end	

  def drink(num_drinks)
  	x = 0
	  while x <= 5 
	   	 p "drank than danced"  
	  	 x += 1
	  end 
	end  
end

denise = Lesbians_Who_Tech.new("Denise Duffy", "Dev Bootcamp", "SF", "Edie Windsor")
# Denise = Lesbians_Who_Tech.new
denise.fav_person = "Notorious RGB"
denise.hoola_hoop(5)
denise.drink(3)
p denise.bootcamp
p denise.fav_person


# Use a loop to make 50 instances of your class.
 
les_name = ["Denise", "Melissa", "Jill"]
bootcamp = ["Dev Boot"]
location = ["SF", "Chicago", "Austin"]
fav_person = ["fav_person"]
les_hash = {}
	x = 0
50.times do 
	les_hash["ediewindsorscholar#{x}"] = Lesbians_Who_Tech.new(les_name.sample,bootcamp,location.sample,fav_person)
	x += 1
end 
puts les_hash 

puts les_hash["ediewindsorscholar34"].inspect
#les_hash[key] = value # => Lesbians_Who_Tech.new

les_hash.each do |key, value|
	# puts key, value
  puts "#{key} ===> #{value}"   
end

les_hash.each do 
	# denise.hoola_hoop(2)
	# denise.drink(3)
	"ediewindsorscholar34".hoola_hoop(2)
	# bring to office hours. this is not right, i want to iterate through each ediewindsorscholar
end


=begin
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
