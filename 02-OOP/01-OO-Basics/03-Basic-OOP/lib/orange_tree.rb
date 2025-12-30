class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :age, :dead, :height

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes!
    @age += 1
    @height += 1 if @age <= 10
    @dead = true if @age > 100

    if @age <= 5
      @fruits = 0
    elsif @age > 5 && @age < 10
      @fruits = 100
    elsif @age >= 10 && @age < 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def dead?
    if @age > 100
      @dead = true
    elsif @age > 50
      chance = rand(0..1)
      @dead = true if chance == 1
    else
      @dead = false
    end
  end

  attr_reader :height, :fruits, :age

  def pick_a_fruit!
    if @fruits <= 0
      0
    else
      @fruits -= 1
    end
  end
end

# mytree = OrangeTree.new
# 7.times do
#   mytree.one_year_passes!
# end
# p mytree.fruits ##100
# p mytree.age

# p"----"
# 5.times do
#   mytree.one_year_passes!
# end
# p mytree.fruits ##200
# p mytree.age ##12
