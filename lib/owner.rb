class Owner
  @@all = []

  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def self.all
    @@all << self
  end
end
