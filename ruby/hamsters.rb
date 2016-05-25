puts "What is the Hamsters name?"
name = gets.chomp

puts "What is the Hamsters volume level (1-10)?"
volume = gets.chomp.to_i

while volume < 1 || volume > 10
	puts "please enter an interger"
	volume = gets.chomp.to_i
end

puts "What is the Hamsters fur color?"
color = gets.chomp

puts "What is the Hamsters adoptable y/n?"
availiable = gets.chomp

puts "What is the Hamsters age?"
age = gets.chomp

if age == ""
	age = nil
else 
	age = age.to_i
end

while age == 0 
	puts "please enter an interger"
	age = gets.chomp.to_i
end

if availiable == "y"
	boolean_availiable = true
	puts "great!"
else 
	boolean_availiable = false
	puts "boo!"
end


puts "This hamster's name is: #{name}"
puts "The hamster's volume is: #{volume}"
puts "The hamster's color is: #{color}"
puts "Is it adoptable: #{boolean_availiable}"
puts "The hamster's age is: #{age}"





