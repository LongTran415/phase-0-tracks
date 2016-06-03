def recipe
  ingredient_1 = "burger"
  ingredient_2 = "fries"
  puts "Would you like #{ingredient_1} and #{ingredient_2}?"
 yield(ingredient_1, ingredient_2)
end

recipe { |ingredient_1, ingredient_2| puts "Hope you like your #{ingredient_1} and #{ingredient_2}!" } 
