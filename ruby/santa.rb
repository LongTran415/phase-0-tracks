
# needs a state
  # gender
  # ethnicity
  # reindeer_ranking

class Santa

  def initialize (gender, ethnicity, hair_color)
     puts "Initializing Santa instance ..."
     @gender = gender
     @ethnicity = ethnicity
     @hair_color = hair_color
     puts "Gender: #{@gender}"
     puts "Ethnicity: #{@ethnicity}"
     puts "Hair color: #{@hair_color}"
  end

  def reindeer_fav_sorter(arry)
    arry = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def age(integer)
    integer += 0
    puts "Age: #{integer}"
  end

  def speak
    puts "Ho, ho, ho! Happy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
  end


end

santa = Santa.new("male", "unicorn", "blue")
santa.age(4)
santa.speak
santa.eat_milk_and_cookies("chocolate chip")

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_eye_color = ["Blue", "Green", "Brown", "Rainbow", "Violet", "Red", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], example_eye_color[i])
end

# driver code for initializing santas
