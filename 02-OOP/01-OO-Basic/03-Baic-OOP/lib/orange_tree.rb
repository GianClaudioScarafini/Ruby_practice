class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :age, :height, :fruits
  
  def initialize
    @age = 0
    @height = 0
    @dead = false
    @fruits = 0
  end
  
  def one_year_passes!
    # TODO: check if the tree has survived
    # TODO: if so, make the tree grow
    
    if @age<50
      @age += 1
        if @age<= 20
          @height += 1
          else
          @height += 0
        end
      
      else
      @dead = true
    end
    # TODO: and produce fruits
    if @age >= 5 && @age < 10 
      @fruits += 100
    elsif @age >= 10 && @age <= 15
      @fruits += 200
    else
      @fruits += 0
    end
    
  end

  def dead?
    @dead
  end
end
