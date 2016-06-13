
# needs a state
  # gender
  # ethnicity
  # reindeer_ranking

class Santa
attr_reader :name, :ice_cream
attr_accessor :name, :ice_cream

  def initialize (gender, ethnicity, hair_color, age, ice_cream, name)
     puts "Initializing Santa instance ..."
     @name = name
     @gender = gender
     @ethnicity = ethnicity
     @hair_color = hair_color
     @age = age
     @ice_cream = ice_cream

  end

  def reindeer_fav_sorter(arry)
    arry.sort_by = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end


  def age(integer)
    integer += 0
    puts "Age: #{integer}"
  end

  def speak
    puts "#{@name} Says Ho, ho, ho! Happy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def about
    puts "Name: #{@name}"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Ice Cream pref: #{@ice_cream}"
    puts "Age: #{@age}"
  end


#>>> getter methods make code readable
#   def name
#     @name
#   end

#   def ice_cream
#     @ice_cream
#   end

#>>> setter method makes code writable
#   def name=(new_name)
#     @name = new_name
#   end

#   def ice_cream=(ice_cream_flavor)
#     @ice_cream = ice_cream_flavor
#   end

end


# driver code for initializing santas

santa = Santa.new("male", "Unicorn", "blue", 22, "Orange cream", "Zoro")
santa.name = "Zoro"
santa.age(22)
santa.about
santa.speak
santa.eat_milk_and_cookies("chocolate chip")


santa = Santa.new("male", "Merman", "Green", 21, "Banana nut", "Luffy")
santa.name = "Luffy"
santa.age(21)
santa.ice_cream = "Chocolate"
santa.about
santa.speak
santa.eat_milk_and_cookies("chocolate, chocolate chip")

# utilizing arrays

santas = []


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_hair_color = ["Blue", "Green", "Brown", "Rainbow", "Violet", "Red", "N/A"]

example_ice_cream = ["Vanilla", "Caramel", "Strawberry", "Neapolitan", "", "Chocolate", "N/A"]

example_names = ["Charlie", "Kim", "Rupert", "Mehul", "", "Lisa", "Bart"]

example_age = [14, 45, 55, 21, 28, 33, 4]


example_genders.length.times do |i|
  santas << santa = Santa.new(example_genders[i], example_ethnicities[i], example_hair_color[i], example_age[i], example_ice_cream[i], example_names[i]).about
end
