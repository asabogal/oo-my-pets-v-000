require 'pry'
class Owner
  @@all = []
  @@counter = 0

  attr_accessor :name
  attr_reader :species
  def initialize(name)
    @name = name
    @@all << self
    @@counter =+ 1
    @pets = {}
    # binding.pry
  end

  def self.all
    @@all
  end

    def self.count
      @@counter
    end

    def self.reset_all
      @@counter = 0
    end

    def species
      self.name
    end

    def say_species
      p "I am a #{self.name}."
    end

    def pets(pets)
      @pets
    end

end
