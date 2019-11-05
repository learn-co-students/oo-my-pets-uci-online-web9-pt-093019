class Cat
  # code goes here
  @@all_cats = []

  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all_cats << self
  end

  def self.all
    @@all_cats
  end
end
