ITEM_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

def poor_calories_counter(burger, side, beverage)
  result = []
  # TODO: return number of calories for this restaurant order
  #
  result << ITEM_CALORIES[burger]
  result << ITEM_CALORIES[side]
  result << ITEM_CALORIES[beverage]
  return result.sum
end


p poor_calories_counter("Cheese Burger", "Sweet Potatoes", "Iced Tea")
