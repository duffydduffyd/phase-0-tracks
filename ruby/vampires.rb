# Vampire 4.4 by Denise Duffy 11/16/16

# Define some varibles
garlic_bread = nil
health_insurance = nil
current_allergies = nil

	# This is a loop that asks how many will be processed
	puts "How many employees will you process in this batch?"
	number_of_employees = gets.to_i
	# other way is gets.chomp.to_i
	p number_of_employees

	until number_of_employees == 0

		# This section just gather's basic information
		puts "What is your Name?"
		employee_name = gets.chomp
		p employee_name

		puts "How old are you?"
		current_age = gets.to_i
		p current_age

		puts "What year were you born?"
		year_born = gets.to_i
		p year_born

		puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
		garlic_bread = gets.chomp
		p garlic_bread

		puts "Would you like to enroll in the company’s health insurance? (y/n)"
		health_insurance = gets.chomp
		p health_insurance	

		puts "Your name is #{employee_name}"
		puts "Your age is #{current_age} ."
		puts "The year you were born is #{year_born}" 
		puts "Likes garlic bread? #{garlic_bread}"
		puts "Has health insurance? #{health_insurance}"



		# This area shows if there is a vampire conclusion based on age, name, garlic break affinity, and need for healthcare
		if current_age >= 125
			puts "You are most definately a vampire based on your current_age."
		else 
			puts "You are a bit young for most vampires."	
		end

		if (current_age <= 125 && year_born >= 1891) && (garlic_bread == "y" || health_insurance == "y")
			puts "You are a probably not a vampire."
		elsif employee_name == ("Drake Cula" || "Tu Fang")
			puts "omg, your name gives it away. You are a Vampire!"
		elsif (current_age >= 125 || year_born <= 1891) && (health_insurance == "n" || health_insurance == nil)
			puts "You are a most probably a vampire."
		elsif (current_age >= 125 || year_born <= 1891) && (garlic_bread == "n" || garlic_bread == nil) && (health_insurance == "n" || health_insurance == nil)
			puts "You are almost certainly a vampire. Ahhhhh! Scary! Although diversity at work is nice. Let's just not work together after sundown."
		else 
			puts "Results Inconclusive."    
		end


		# This area is attempting to use a while loop about alergies. 
		while current_allergies != ("sunshine" || "done")
			puts "What are your current allergies? Please list one at a time in lowercase and press return. Type 'done' when you have listed them all." 
			current_allergies = gets.chomp

		end
			
		if current_allergies == "done"
			puts "Thank you for this information."
		else
			puts "You are pretty much a vampire."		
		end	

	number_of_employees -= 1 
	end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

