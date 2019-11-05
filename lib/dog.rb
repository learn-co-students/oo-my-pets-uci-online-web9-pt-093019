require 'pry'
class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []
  
  def initialize(name, owner)
    @name, @owner, @mood = name, owner, "nervous"
    save
  end
  
  def self.all
    @@all
  end
  
  private
  def save
    @@all << self
  end
end