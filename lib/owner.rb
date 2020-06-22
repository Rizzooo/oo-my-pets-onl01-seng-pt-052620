class Owner
  @@all= []
  attr_accessor :pets
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_cat(cat)
    cat = Cat.new(name, self)
    @pets[:cats] << cat
  end
  
  def feed_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def buy_dog(dog)
    dog = Dog.new(name, self)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def species
    @species
  end
  
  def cats
    Cat.self.all
  end
  
  def dogs
    Dog.self.all
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
end