def cliformatting(value)
  p "-------------------"
  p value
  p "-------------------"
end

name = String.new("this is a string")

# cliformatting(name)

nameSplit = name.split(" ")
# p nameSplit
# 


class Car
  attr_reader :brand, :engine_started
  attr_accessor  :color
  def initialize()
    @engine_started = false
    @color = color 
    @brand = "ford"
  end
end

my_car = Car.new("")
# p my_car.engine_started? #=> false
# p my_car.start_engine
# p my_car.engine_started? #=> true

red_car = Car.new("red")
p "red car"
p red_car
p "----"
