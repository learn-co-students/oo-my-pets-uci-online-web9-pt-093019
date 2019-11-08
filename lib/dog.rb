class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []
  def initialize(name, owner_instance)
    @name = name
    @owner = owner_instance
    @mood = "nervous"
    save
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
end
