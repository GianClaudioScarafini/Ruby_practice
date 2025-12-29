class Restaurant
  attr_reader :name, :cuisine
  attr_accessor :rating
  def initialize(name, cuisine, rating)
    @name = name
    @cuisine = cuisine
    @rating = rating
  end
end