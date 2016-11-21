
#Practice array

dish_list = []
desserts_list = []

puts "Welcome to your Thanksgiving Dishes List"

loop do 
	puts "Enter a dish (or type exit):"
	dish = gets.chomp
	break if dish == "exit"
	dish_list << dish
end

loop do 
	puts "Enter your list of desserts (or type exit):"
	desserts = gets.chomp
	break if desserts == "exit"
	desserts_list << desserts
end

meal = dish_list << desserts_list
total_meal = meal.flatten

# Which dish number would you like to print out? 
# gets.chomp = item_number
# p dish_list[item_number]

puts "Your meal of #{total_meal.to_s} sounds fabulous."  # How do I make this readable? is there a 
# that converts to a string and then adds an "and" where the commas once were?

# p dish_list
# p dish_list.length
# p dish_list[2]
# p desserts_list
# puts "Happy Thanksgiving!"
# p total_meal
# Practice Hash about Thanksgiving 2017

thanksgiving_2017 = {}

thanksgiving_2017 = {
	:date => "11/24/17",
	:location => "brothers_house_in_sonoma",
	:chef => "tzvetana",
	:meal => total_meal
}

thanksgiving_2017[:themesong] = "no_way_out"
thanksgiving_2017[:chef] = "me"

p thanksgiving_2017

# What happens if store a key in a variable, then access the hash using the variable? 
# Does it work?

# What happens when try an expression like 
# your_hash[:name] + your_hash[:address] (or whatever keys you used)? 
# Does it affect the original hash?
# thanksgiving_2017[:name] + thanksgiving_2017[:address]
# p thanksgiving_2017


# How do I print this in a block?
# h.each {|key, value| puts "#{key} is #{value}" }
# thanksgiving_2017.each_value {|value| puts value }



