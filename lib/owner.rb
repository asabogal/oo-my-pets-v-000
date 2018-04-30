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
      puts @name
    end

end
