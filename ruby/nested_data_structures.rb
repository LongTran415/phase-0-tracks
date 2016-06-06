#>>>>>>>> Data structure for a restuarant

restuarant = {
  "Front of house" => ["front desk", "seating"],
  "Kitchen" => ["Range top and oven", "Cooks", "Prep station", "Compost"],
  "Dish pitt" => ["Dishes", "Dishwasher", "Waste bins"],
  "Walkin fridge" => ["Produce", "Dairy", "Meat"]
}

puts restuarant["Front of house"][2]
#=> "Cooks"


restuarant["Walkin fridge"].push("Libations")

#=> ["Produce", "Dairy", "Meat", "Libations"]

restuarant["Kitchen"][3] = "Compost bin"

#=> ["Range top and oven", "Cooks", "Prep station", "Compost bin"]
