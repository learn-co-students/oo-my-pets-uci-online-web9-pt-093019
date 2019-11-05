class Owner
  # code goes here
  @@all_owners = []
  attr_accessor :dog, :cat
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all_owners << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.count
  end

  def self.reset_all
    @@all_owners.clear
  end

  def cats
    Cat.all.select{|cat_instance| cat_instance.owner == self}
  end

  def dogs
    Dog.all.select{|dog_instance| dog_instance.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    dogs.each {|dog_instance| dog_instance.mood = "happy"}
  end

  def feed_cats
    cats.each {|cat_instance| cat_instance.mood = "happy"}
  end

  def sell_pets
    cats.each {|cat_instance| cat_instance.mood = "nervous"}
    cats.each {|cat_instance| cat_instance.owner = nil}
    dogs.each {|dog_instance| dog_instance.mood = "nervous"}
    dogs.each {|dog_instance| dog_instance.owner = nil}
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end
