require 'pry'
class Owner
  @@all = []
  @@counter = 0
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
    @@counter =+ 1
  end

  def self.all
    @@all
  end

    def self.reset_all
      @@counter
    end

end
