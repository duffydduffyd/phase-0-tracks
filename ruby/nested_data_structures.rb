# 5.3 Nested Data Structures Denise Duffy 11/21/17

# Make a Thanksgiving Hash, with Nested Hashes and Arrays

thanksgiving_2017 = {}

# Thanksgiving array of logistics, mains, and desserts mapping to hashes, then some mapping to arrrays
thanksgiving_2017 = [
		
		logistics = { 
				:Date => "11/24/17",
				:Location => "Brothers house in Sonoma",
				:Chef => "Tzvetana"
		},

    mains = {
    		:Turkey => ["turkey", "broth to baste", "large deep pan"],
    		:Corn_pudding => ["corn", "milk", "flour", "nutmeg", "chives", "9 by 13 pan"],
    		:Cranberry_sauce => ["cranberries", "orange peel and juice", "cardamon", "medium sauce pan"]
    },		

    desserts = {
    		:Apple_pie => ["apples", "sugar", "pastry", "cinnamon" ]
    }	
]

# Driver code to access array, then hash within an array, then array with a hash
# p thanksgiving_2017[0]
# p thanksgiving_2017[1][:turkey]
# puts thanksgiving_2017[1][:turkey][2]
# p thanksgiving_2017[0].keys
# p thanksgiving_2017[1].values
# thanksgiving_2017[0][:Chef] = "me"


# Iterating through thanksgiving_2017 array at the zero index 
thanksgiving_2017[0].each do |key, value|
	puts "#{key} is: #{value}"
end
# puts thanksgiving_2017[0]


# Iterating through thanksgiving_2017 array index of 1 and two
thanksgiving_2017[1].each do |key, value|
	 	puts "The dish is #{key} and this is what you need to make it: #{value.join(", ")}"   
end

thanksgiving_2017[2].each do |key, value|
	 	puts "The dish is #{key} and this is what you need to make it: #{value.join(", ")}"   
end

# This is the current output:

# Date is: 11/24/17
# Location is: brothers_house_in_sonoma
# Chef is: Tzvetana
# The dish is Turkey and this is what you need to make it: turkey, broth to baste, large deep pan
# The dish is Corn_pudding and this is what you need to make it: corn, milk, flour, nutmeg, chives, 9 by 13 pan
# The dish is Cranberry_sauce and this is what you need to make it: cranberries, orange peel and juice, cardamon, medium sauce pan
# The dish is Apple_pie and this is what you need to make it: apples, sugar, pastry, cinnamon