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

		# 
		puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
		garlic_bread = gets.chomp
			if garlic_bread[0] == "Y" 
					garlic_bread = true
				elsif garlic_bread[0] == "y"
					garlic_bread = true
				elsif garlic_bread[0] == "N" 
				 	garlic_bread[0] = false
				elsif garlic_bread[0] == "n" 
				garlic_bread = false	
				else garlic_bread = nil
			end	
		p garlic_bread

		puts "Would you like to enroll in the company’s health insurance? (y/n)"
		health_insurance = gets.chomp
			if health_insurance[0] == "Y" 
					health_insurance = true
				elsif health_insurance[0] == "y" 	
					health_insurance = true
				elsif health_insurance[0] == "N"
					health_insurance = false
				elsif health_insurance[0] == "n" 	
					health_insurance = false
				else health_insurance = nil	
			end	
		p health_insurance	

		puts "Your name is #{employee_name}"
		puts "Your age is #{current_age}."
		puts "The year you were born is #{year_born}." 
		puts "#{employee_name} likes garlic bread: #{garlic_bread}"
		puts "#{employee_name} has health insurance: #{health_insurance}"

		# This area shows if there is a vampire conclusion based on age, name, garlic break affinity, and need for healthcare
		if (current_age <= 125 && year_born >= 1891) && (garlic_bread == true || health_insurance == true)
				puts "You are not a vampire."
			elsif employee_name == ("Drake Cula" || "Tu Fang")
				puts "omg, your name gives it away. You are a Vampire!"
			elsif (current_age >= 125 || year_born <= 1891) && (health_insurance == false) && (garlic_bread == false)
				puts "You are certainly a vampire."
			else 
				puts "Results Inconclusive."    
		end

	# # This area is attempting to use an until loop about alergies.

	# 		until	current_allergies == "sunshine" || "done"
	# 				puts "What are your current allergies? Type done when you have listed them all."
	# 				current_allergies = gets.chomp 		
	# 		end	

	# 		if current_allergies == "sunshine"
	# 				puts "Wow, you actually are a vampire."		
	# 			else current_allergies == "done"
	# 				puts "Thank you for this information."
	# 		end	


		# This area is attempt #2 to use an until loop about alergies.
			

		loop do
			if current_allergies == "sunshine" 
				puts "Wow, you actually are a vampire."	
			elsif current_allergies == "done"	
				puts "Thank you for this information"
			else
				puts "What are your current allergies? Type done when you have listed them all."
				current_allergies = gets.chomp  	
		end	

		number_of_employees -= 1 
		
	end
	
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	end
