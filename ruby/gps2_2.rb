# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create an empty hash and move string input into hash.
  # set default quantity
  # print the list to the console [maybe use an each method]
# output: a Hash
#
# list_items => ["apples", "peaches", "limes"]
# grocery_list = {}
def create_list(string_of_items)
  grocery_list = Hash.new(0)
  list_items = string_of_items.split(" ")

  list_items.each {|item| add_item_to_list(grocery_list,item) }

  return grocery_list
end


# Method to add an item to a list(or in this case an Hash.)

def add_item_to_list(grocery_list, item, amount = 0)
  grocery_list[item.to_sym] += amount
end
# input: item name and optional quantity
# steps:
  # add item to new hash
  # change input from array to symbol and set opitional value
# output: no output, just changes the list.



# Method to remove an item from the list
def remove_item_from_list(grocery_list, item)
  grocery_list.delete(item.to_sym)
end
# input: my hash and item I want to delete
# steps:
# use delete method on my hash
# output: none, just changes the list.



# Method to update the quantity of an item
def update_item_from_list(grocery_list, item, amount)
  grocery_list[item.to_sym] = amount
end
# input: my hash and item
# steps
  # setting my hash list items to a varible amount
# output: no out put just changes the list



# Method to print a list and make it look pretty
def prettify_item_from_list(grocery_list)
  grocery_list.each {|key,value| puts "#{key.capitalize} - #{value}" }
end
# input: my hash
# steps:
  # iterate on the hash key and value pair
  # print value pair with added prettify methods
# output: no output, just changes the list

list = create_list("apples peaches limes")
#=>{:apples=>1, :peaches=>1, :limes=>1}

add_item_to_list(list, "Blue bottle coffee",5)
#=>{:apples=>1, :peaches=>1, :limes=>1, :"Blue bottle coffee"=>5}

update_item_from_list(list, "apples",10)
#=>{:apples=>10, :peaches=>1, :limes=>1, :"Blue bottle coffee"=>5}

remove_item_from_list(list, "apples")
#=>{:peaches=>1, :limes=>1, :"Blue bottle coffee"=>5}

#prettify_item_from_list(list)

create_list("Lemonade Tomatoes Onions Ice_Cream")

new_list = create_list("Lemonade Tomatoes Onions Ice_Cream")

update_item_from_list(new_list, "Lemonade",2)
update_item_from_list(new_list, "Tomatoes",3)
update_item_from_list(new_list, "Onions",1)
update_item_from_list(new_list, "Ice_Cream",4)

remove_item_from_list(new_list, "Lemonade")

update_item_from_list(new_list, "Ice_Cream",1)

prettify_item_from_list(new_list)


puts grocery_list


#What did you learn about pseudocode from working on this challenge?
  # I learned that it really helps you define your input and output,
  # which helps you with figuring out what data types to use as arguments.

#What are the tradeoffs of using arrays and hashes for this challenge?
  # We decided to use a Hash for this challenge because each item from the input
  # needed a value, and we felt a hash best represented that data type.
  #
  # The trade off I think is that you can call more interesting methods on arrays
  # and probably build a more dynamic program. I think it's a little easier to access indexs of arrays.

#What does a method return?
  # the output of a method can give a return value, or it just returns the changed object.

#What kind of things can you pass into methods as arguments?
  # You can use strings, integers, booleans, default values and opitional values,

#How can you pass information between methods?
  # You can use methods with certain conditionals within another method.

#What concepts were solidified in this challenge, and what concepts are still confusing?
  # I understand now how to create an empty hash or array. I also understand
  # built-in methods for the most part(mostly thanks to Ruby Docs), but what I am
  # having the most issues with is understing the input and output of certain method calls and functions.
  # I find myself doubting the right answer often, and I think it is because I still feel like I don't
  # fully graps Ruby methods yet.
