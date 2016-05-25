puts "What is the Hamsters name?"
name = gets.chomp

puts "What is the Hamsters volume level (1-10)?"
volume = gets.chomp.to_i

puts "What is the Hamsters fur color?"
color = gets.chomp

puts "What is the Hamsters adoptable y/n?"
availiable = gets.chomp

puts "What is the Hamsters age?"
age = gets.chomp.to_i


if age == ""
	age = nil
end

if availiable == "y"
	puts "great!"
else 
	puts "boo!"
end

puts name
puts volume + 1
puts color
puts availiable
puts age + 1





