
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
  attr_reader :name, :age, :race, :power_type, :location
  attr_accessor :name, :age, :race, :power_type, :location

  def initialize(name, age, race, power_type, location)
    puts "Creating wizard class..."
    @name = name
    @age = age
    @race = race
    @power_type = power_type
    @location  = "Wizardry School of Hard Knox"
  end

  def age(integer)
    integer += 0
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

wizard = Wizard.new("Li Ming", "300", "Human", "Arcane", "Wizard School")
wizard.profile
wizard.cast_spell("Fire Ball!!")
wizard.teleport("Harry's place")
