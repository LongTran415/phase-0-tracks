
#Create a form for client to fill out and request input from client.
# Make sure to use integer, string, and boolean data.
# Make a Hash to store and sort information.
# Make conditiona statements to organize data into 4 style catergories
# Make a key in the Hash updateable
# Return data to user with users style preference



#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#User Input
puts "Please fill out information, type none to skip:"

puts "Full name:"
  client_name = gets.chomp

puts "Age:"
  client_age = gets.chomp

puts "Address:"
  client_address = gets.chomp

puts "What is your favorite color?"
  client_fav_color = gets.chomp

puts "Do you have any children, yes or no?"
  client_children = gets.chomp

puts "If yes how many, or type n/a"
  client_child_number = gets.chomp

puts "Do you like Pink flamingos"
  client_flam_pref = gets.chomp

puts "Would you say your style is avant garde?"
  client_style = gets.chomp

puts "Do you like nature?"
  client_nature = gets.chomp

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#booleans

does_have_child = (client_children == "yes")

is_avant_garde = (client_style == "yes")

does_like_nature = (client_nature == "yes")

does_like_flam = (client_flam_pref == "yes")

#integers

client_age = client_age.to_i
client_child_number = client_child_number.to_i

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#Hash

client_form = {
  Name: client_name,
  Age: client_age,
  Address: client_address,
  Color: client_fav_color,
  Children: does_have_child,
  Children_Number: client_child_number,
  Likes_Flamingos: does_like_flam,
  Client_avant_garde: is_avant_garde,
  Likes_nature: does_like_nature
}

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

puts client_form


#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


puts "Would you like to change anything?"
  client_answer = gets.chomp

  if client_answer == "yes"
    puts "Which line?"
  else
    puts "Thank you"
  end

  answer_change = gets.chomp
  if answer_change == "name"
      puts "New Name:"
        new_client_name = gets.chomp
    client_form[:name].push(new_client_name)
  end

  puts client_form
