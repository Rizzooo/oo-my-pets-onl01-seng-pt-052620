require 'pry'

class Owner
  @@all= []
  attr_accessor :dogs, :cats
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @dogs = []
    @cats = []
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_cat(cat)
    #cat = Cat.new(name, self)
    #@cats << cat
  end
  
  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def buy_dog(dog)
    #dog = Dog.new(name, self)
    #@dogs << dog
  end
  
  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def species
    @species
  end
  
  def cats
    Cats.all.each do |cat|
      if cat.owner = self
        @cats << cat
      end
    end
    @cats
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