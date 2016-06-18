#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative drawing from another ruby file in the same respository
# require draws from another ruby file in the library and needs load path
# require_relative 'state_data'

# defining a class for VirusPredictor

require_relative 'state_data'

class VirusPredictor

  # initializing the class of VirusPredictor and its attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # uses predicted_deaths and speed_of_spread and uses the STATE DATA hash as input
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# renders everything below it as a private method
private

  # uses population_density to predict the number of deaths in each state with conditional
  # statements and prints the number of deaths per state at the end of the method
  def predicted_deaths
    # predicted deaths is solely based on population density


    # case @population_density
    #   when 200..250
    #     number_of_deaths = (@population * 0.4).floor
    #   when 150..199
    #     number_of_deaths = (@population * 0.3).floor
    #   when 100..149
    #     number_of_deaths = (@population * 0.2).floor
    #   when 99..50
    #     number_of_deaths = (@population * 0.1).floor
    #   else
    #     number_of_deaths = (@population * 0.05).floor
    # end

number_of_deaths =
    @population *=
    if @population_density >= 200
     0.4 #= number_of_deaths.floor
   elsif @population_density >= 150
     0.3 #= number_of_deaths.floor
   elsif @population_density >= 100
     0.2 #= number_of_deaths.floor
   elsif @population_density >= 50
     0.1 #= number_of_deaths.floor
    else
     0.05 #= number_of_deaths.floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # takes population density and calculates the speed of how fast the virus will spread in months
  # prints the speed of spread at the end of the method
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
#     speed = 0

# original code

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

# refactored code
   speed = 0

   speed += if @population_density >= 200
            0.5
         elsif @population_density >= 150
            1
         elsif @population_density >= 100
            1.5
         elsif @population_density >= 50
            2
         else
            2.5
             end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, population_info|
  state = VirusPredictor.new(state_name, population_info[:population_density], population_info[:population])
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# the first hash takes the state name as a key and another hash as the value, the second hash has
# a key of population_density and a vaule of population.

# What does require_relative do? How is it different from require? require_relative draws data from another
# file in the same respository using the method, while require
# takes a library name like Time and imports the methods and modules that are connected to that library

# What are some ways to iterate through a hash?
# you can use a .each method or use a for loop.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The one thing that stood out the most was when refactoring the speed_of_spread method,
# you were given the spped as a varible, which made it easier to refactor.

# What concept did you most solidify in this challenge?
# I felt like I really got a good sense on how to write methods and iterate through hashes.
