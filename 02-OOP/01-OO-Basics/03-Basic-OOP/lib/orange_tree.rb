class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_reader :age, :height, :fruits
  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes
    @age +=1

  end
  def dead?
    if @age < 50
      @dead = false
    else
      @dead = true
    end
  end

  private
  def grow!
    @height += 1
    @fruits += 10 if @age >= 5
  end
end
