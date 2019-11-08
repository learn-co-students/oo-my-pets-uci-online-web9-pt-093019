class Cat
  attr_accessor :owner, :mood
 attr_reader :name
@@all = []

 def name
@name.dup.freeze
 end
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    @@all << self
  end


  ###Class Methods ###

  def self.all
    @@all
  end

end
