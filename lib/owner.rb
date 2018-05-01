require 'pry'
class Owner
  @@all = []
  @@counter = 0

  attr_accessor :name, :pets
  attr_reader :species
  def initialize(name)
    @name = name
    @@all << self
    @@counter =+ 1
    @pets = {fishes: [], cats: [], dogs: []}

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

    def pets
      @pets

    end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs

  end

end
