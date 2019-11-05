class Dog
  # code goes here

  @@all_dogs = []

  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, owner)
    @name, @owner = name, owner
    @mood = "nervous"
    @@all_dogs << self
  end

  def self.all
    @@all_dogs
  end
end
