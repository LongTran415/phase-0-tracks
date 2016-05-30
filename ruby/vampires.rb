puts "What is your name?"
	hire_name = gets.chomp
wrong1_name = true
wrong2_name = false
unknown_name = "Results are inconclusive"
	if hire_name == "Drake Cula"
		hire_name = wrong_name1
	elsif hire_name == "Tu Fang"
		hire_name = wrong_name2
	else
	    hire_name = unknown_name
	end

puts "How old are you?"
	hire_age = gets.chomp

puts "What year are you born?"
	hire_birthyr = gets.chomp

def age_plus_year(x,y)
	age_plus_year = x + y
end

age_plus_year(hire_age,hire_birthyr) = sum_of_year
current_year = true
age_wrong = false
if age_plus_year == 2016
	age_plus_year = current_year
else
	age_plus_year = age_wrong

end

puts "Our company cafeteria serves garlic bread, should we order some for you, yes or no?"
	hire_garlic_preference = gets.chomp

will_eat = true
wont_eat = false
if hire_garlic_preference == "yes"
	hire_garlic_preference = will_eat
else
	hire_garlic_preference = wont_eat
end


puts "Would you like to enroll in the company's health insurance? Yes or no?"
	hire_insurance = gets.chomp

will_signup = true
wont_signup = false
if hire_insurance == "yes"
	hire_insurance = will_signup
else
	hire_insurance = wont_signup
end
current_year = true
unknown_name = "Results are inconclusive"
will_signup = true
wont_signup = false
will_eat = true
wont_eat = false

age_wrong = false
wrong1_name = true
wrong2_name = false
if age_right && will_eat && will_signup
	puts "Probably not a vampire"
elsif age_wrong || wont_eat || wont_signup
	puts "Probably a vampire"
elsif age_wrong || wont_eat || wont_signup
	puts "Almost certainly a vampire"
elsif wrong_name1 || wrong_name2
	puts "Definitely a Vampire"
else
	puts unknown_name
end
