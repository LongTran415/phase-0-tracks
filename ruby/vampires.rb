
def vampire_checker

	def age_plus_year(x,y)
		  x.to_i + y.to_i
	end
	#usersinput
	puts "What is your name?"
		hire_name = gets.chomp

	puts "How old are you?"
	  hire_age = gets.chomp

	puts "What year are you born?"
	  hire_birthyr = gets.chomp

	puts "Our company cafeteria serves garlic bread, should we order some for you, yes or no?"
		hire_garlic = gets.chomp

	puts "Would you like to enroll in the company's health insurance? Yes or no?"
		hire_insurance = gets.chomp

  #loop allergies
	is_allergy_sunshine = false
	hire_allergy = nil
	until hire_allergy == "done" || is_allergy_sunshine
		puts "Name an allergy:"
		hire_allergy = gets.chomp
		if hire_allergy == "sunshine"
			is_allergy_sunshine = true
		end
	end
	#booleans

	is_name_vamp = true
	is_age_correct = false
	is_garlic_ok = false
	is_sign_insurance = false


	# check name
	if hire_name != "Drake Cula" && hire_name != "Tu Fang"
		is_name_vamp = false
	end

	# check age
	current_year = 2016
	sum_age_plus_year = age_plus_year(hire_age,hire_birthyr)

	if current_year == sum_age_plus_year
			is_age_correct = true
	end

	# check garlic

	if hire_garlic == "yes"
		is_garlic_ok = true
	end

	# check insurance

	if hire_insurance == "yes"
		is_sign_insurance = true
	end

	# Check Booleans

	if is_name_vamp == true
		puts "Definitely a Vampire"
	elsif is_allergy_sunshine == true
		puts "Probably a Vampire"
	elsif is_age_correct && (is_garlic_ok || is_sign_insurance)
		puts "Probably not a Vampire"
	elsif !is_age_correct && (!is_garlic_ok && !is_sign_insurance)
		puts "Almost certainly a vampire!"
	elsif !is_age_correct && (!is_garlic_ok || !is_sign_insurance)
		puts "Probably a Vampire"
	else
		puts "Results inconclusive"
	end

end

#users input
puts "How many employees will be processed?"
amount_to_process = gets.chomp

#loop

employee_process = 0

while employee_process < amount_to_process.to_i
	 vampire_checker
	employee_process += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
