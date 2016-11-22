# 4.3 Nested Data Structures Denise Duffy 11/21/17

# Make a Thanksgiving Hash, with Nested Hashes and Arrays

thanksgiving_2017 = {}

# Hash key values of logistics, mains, and desserts mapping to hashes, then mapping to arrrays
thanksgiving_2017 = {
		
		logistics = { 
				:date => "11/24/17",
				:location => "brothers_house_in_sonoma",
				:chef => "tzvetana"
		}

    mains = {
    		:turkey => ["turkey", "broth to baste", "large deep pan"]
    		:corn_pudding => ["corn", "milk", "flour", "nutmeg", "chives", "9 by 13 pan"]
    		:cranberry_sauce => ["cranberries", "orange peel and juice", "cardamon", "sauce pan"]
    }		

    desserts => = {
    		:apple_pie => ["apples", "sugar", "pastry", "cinnamon" ]
    }	

}


customer.each do |key, value,|
	puts "#{key} ==> #{value}"   
end





# What if I want a pastry array of incredients?