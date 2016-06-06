
# make an encryption program that modifies a users input with a method
# create a data structure that runs the program


# # To be completely honest I didnt have enough time this week to complete this challenge. 
# I thought I would turn in something for now and go back through a do this assignment again.


def alias_key(alias_name)

 index = 0
 while index < alias_name.length

  if alias_name[index] == "z"
    alias_name[index] = "a"
  elsif alias_name[index] != " "
    alias_name[index] = alias_name[index].next
  end

  index += 1
 end

 alias_name

end

puts "Name please?"

spy_name = gets.chomp

alias_key(spy)
