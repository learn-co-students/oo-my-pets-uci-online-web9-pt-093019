require 'pry'
class Owner
#  attr_accessor :cats, :dogs
  @@all = []

  def name
    @name.dup.freeze
  end
  def species
    @species.dup.freeze
  end


  def initialize(name)
@name = name
@species = "human"
@@all << self
#@cats = []
#@dogs = []
  end

def say_species
"I am a #{species}."
end

def cats
Cat.all.select {|cat| cat.owner == self}
end

def dogs
  Dog.all.select {|dog| dog.owner == self}
end

def buy_cat(cat_name)
  Cat.new(cat_name, self)
end

def buy_dog(dog_name)
  Dog.new(dog_name, self)
end

def walk_dogs
  dogs.each {|dog| dog.mood = "happy"}
end

def feed_cats
  cats.each {|cat| cat.mood = "happy"}
end

def sell_pets
 cats.each {|cat| cat.owner = nil; cat.mood = "nervous"}
 dogs.each {|dog| dog.owner = nil; dog.mood = "nervous"}
end

def list_pets
"I have #{dogs.size} dog(s), and #{cats.size} cat(s)."
end

### Class Methods ###

def self.all
@@all
end

def self.count
  @@all.size
end

def self.reset_all
  @@all.delete_if {true}
end

end #end of class
