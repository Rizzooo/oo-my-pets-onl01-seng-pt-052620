class Cat
  
  attr_reader :name
  attr_accessor :mood, :owner
 
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
  end
end