require 'pry'
class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name, species="human")
    @species = species
    @name = name
    save
  end

  def save
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name, self)
    # cat_instance.owner = self
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name, self)
  end

  def walk_dogs
    Dog.all.collect {|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.collect {|cat| cat.mood = "happy"}
  end
  def pets
    pets = dogs + cats
  end
  def sell_pets
    pets.collect do |pet|
      pet.mood = "nervous" 
      pet.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
