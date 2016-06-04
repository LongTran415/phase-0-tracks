# def recipe
#   ingredient_1 = "burger"
#   ingredient_2 = "fries"
#   puts "Would you like #{ingredient_1} and #{ingredient_2}?"
#  yield(ingredient_1, ingredient_2)
# end
#
# recipe { |ingredient_1, ingredient_2| puts "Hope you like your #{ingredient_1} and #{ingredient_2}!" }

letters = ["a","b","c","d","e"]
new_letters = []

p new_letters

puts "Original data:"

p letters

#iterate through the array with .each

#.map method
mod_letters = letters.map do |letter|
  puts letter
  letter.next
end

#.each method
letters.each do |letter|
  new_letters << letter.next
end


puts "After .each call:"
p letters
p mod_letters
p new_letters
###############

numbers = {
  1 => "one",
  2 => "two",
  3 => "three"
}

# iteral through the hash with .each

numbers.each do |digit, word|
  puts "#{digit} is spelled out as #{word}"
end


p new_days
p cap_days_of_week
p new_days
p cap_days_of_week

#>>>>>>>>>>>>>>>>>>>>>>> Release 1

#>>> Arrays

#>>>>>>>>>> .each Method
days_of_week = ["monday","tuesday","wednesday"]
new_days = []
#>>>>>>>>> .map Method
days_of_week.each do |day|
	new_days<< day.capitalize
end

cap_days_of_week = days_of_week.map do |day|
  day.capitalize
end
#>>>>>>>> .map!
days_of_week = ["monday","tuesday","wednesday"]
new_days = []

cap_days_of_week = days_of_week.map! do |day|

  day.capitalize
end

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#>>>>> Hashes
city_state = {
  "California" => "San Francisco",
  "Texas" => "Dallas",
  "Arizona" => "Phoenix"
}

#>>>>>>>>>>> .each Method
city_state.each do |state, city|
  puts "Hello I am from #{city}, #{state}!"
end

#>>>>>>>>>>> .map Method
city_state.map do |state, city|
  "Hello I am from #{city}, #{state}!"
end

#>>>>>>>>>>>>>>>>>>>> Release 2

#>>>>>>> Arrays

#Question 1 Array - delete_if

my_stone_fruits.delete_if {|fruit| fruit == "plum"}
my_stone_fruits = ["peach","plum","pear"]
#=> ["peach","pear"]

#Question 2 Array - select

my_stone_fruits.select {|fruits| fruits.length < 5}

#=>["plum", "pear"]

#Question 3 Array - reject

my_stone_fruits.reject {|fruits| fruits.length >= 5 }

#=>["plum", "pear"]

#Question 4 Array - delete_if

my_stone_fruits.keep_if { |fruits| fruits != "plum" }

#=> ["peach", "pear"]



#>>>>>> Hash
my_books = {
  "Jose Saramago" => "Blindness",
  "Jane Austen" => "Pride and Prejudice",
  "Stephen King" => "It"
}

#Question 1 Hash - delete_if

my_books.delete_if {|author, title| author == "Jane Austen"}

#=> {"Jose Saramago"=>"Blindness", "Stephen King"=>"It"}

#Question 2 Hash - select

my_books.select {|author,title| title.length > 5 }

#=> {"Jose Saramago"=>"Blindness", "Jane Austen"=>"Pride and Prejudice"}

#Question 3 Hash - reject

my_books.reject { |author, title| author == "Jane Austen"}

#=> {"Jose Saramago"=>"Blindness", "Stephen King"=>"It"}

#Question 4 Hash -

my_books.keep_if { |author, title| author != "Jane Austen"}

#=> {"Jose Saramago"=>"Blindness", "Stephen King"=>"It"}
