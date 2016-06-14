
# Design a class for wizards

# Add attributes
  #name
  #age
  #race
  #power_type
  #location

# Create wizard methods with an argument
  # steps:
    # define method that make sense to wizards
    # give some methods arugments

class Wizard

  #>>>>>>>>>>>>>
  # getter/setter methods
  attr_reader :name, :age, :race, :power_type, :location, :profile
  attr_accessor :name, :age, :race, :power_type, :location, :profile

  def initialize(name, age, race, power_type, location)
    puts "Creating wizard class..."
    @name = name
    @age = age
    @race = race
    @power_type = power_type
    @location  = "Wizardry School of Hard Knox"
  end

  def age(integer)
    integer.to_i += 0
    puts "Age: #{integer}"
  end

  def cast_spell(encantation)
    puts "#{@name} says #{encantation}!"
  end

  def teleport(location)
    puts "#{@name} teleported to #{location}!"
  end

  def power_type(school_of_magic)
    @power_type = school_of_magic
  end

  def profile
    puts "Name: #{@name}"
    puts "Age: #{@age}"
    puts "Race: #{@race}"
    puts "Power_type: #{@power_type}"
    puts "Location: #{@location}"

  end

end

#driver code

wizard = Wizard.new("Li Ming", 300,"Human", "Arcane", "Wizard School")
wizard.profile
wizard.cast_spell("Fire Ball!!")
wizard.teleport("Harry's place")

#user interface

user_input = nil


until user_input == "done"

	puts "Wizard profile maker. Name, age, race, power_type, and location in that order please:"

	user_input = gets.chomp


	user_descript = user_input.split(" ")
	#=> ["li", "23", "human", "ice", "russia"]

	wizard_name = user_descript[0]
	wizard_age = user_descript[1]
	wizard_race = user_descript[2]
	wizard_power = user_descript[3]
	wizard_loca = user_descript[4]

	wizard = Wizard.new(wizard_name, wizard_age, wizard_race,wizard_power,wizard_loca).profile

 	puts "Are you done, if yes type done, otherwise hit enter."

 	user_input = gets.chomp

 end
