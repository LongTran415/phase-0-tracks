# Method to create a list
#
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

def add_item_to_list(grocery_list, item, amount = 1)
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
# output:

list = create_list("apples peaches limes")
#=>{:apples=>1, :peaches=>1, :limes=>1}

add_item_to_list(list, "Blue bottle coffee",5)
#=>{:apples=>1, :peaches=>1, :limes=>1, :"Blue bottle coffee"=>5}

update_item_from_list(list, "apples",10)
#=>{:apples=>10, :peaches=>1, :limes=>1, :"Blue bottle coffee"=>5}

remove_item_from_list(list, "apples")
#=>{:peaches=>1, :limes=>1, :"Blue bottle coffee"=>5}

prettify_item_from_list(list)
