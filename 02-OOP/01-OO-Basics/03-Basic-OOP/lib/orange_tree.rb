class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :age, :dead, :height, :fruits

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes!
    unless dead?
      grow!
      may_die!
      produce_fruits!
    end
  end

  attr_reader :fruits

  def dead?
    @dead
  end

  def pick_a_fruit!
    if @fruits <= 0
      0
    else
      @fruits -= 1
    end
  end

  private

  def may_die!
    if @age > 100
      @dead = true
    elsif @age > 50
      chance = rand(0..1)
      @dead = true if chance == 1
    else
      @dead = false
    end
  end

  def grow!
    @age += 1
    @height += 1 if @age <= 10
  end

  def produce_fruits!
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
end
