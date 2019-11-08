class Cat
  attr_reader :name
  attr_accessor :owner, :mood
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
