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
  
  def buy_cat(cat_name)
    cat_name = Cat.new(name, self)
    cat_name.Owner = self
    @pets[:cats] << cat_name
  end
  
  def feed_cats
    pets.collect do |type, indiv|
      if type == :cats
        indiv.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end
  
  def buy_dog(dog_name)
    dog_name = Dog.new
    cat_name.owner = self
    @pets[:dogs] << dog_name
  end
  
  def walk_dogs
     pets.collect do |type, indiv|
      if type == :dogs
        indiv.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end
  
  def species
    @species
  end
  
  def cats
    @pets[:cats]
  end
  
  def dogs
    @pets[:dogs]
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