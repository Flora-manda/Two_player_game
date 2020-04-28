class Players
  attr_reader :name
  attr_accessor :highest_life

  def initialize(name)
    @name = name
    @highest_life = 3
  end
  
  def looses_life
    @highest_life -= 1
  end

  def dead?
    @highest_life <= 0
  end
  
end
