require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

class Car

  attr_reader :make, :model, :classification
  attr_accessor :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map do |car|
      car.classification
    end
  end

  def self.find_mechanics(classification)
    Mechanic.all.select do |mechanic|
      mechanic.specialty == classification
    end
  end

end

owner1 = CarOwner.new("Bob")
owner2 = CarOwner.new("John")

mechanic1 = Mechanic.new("Carol", "sports")
mechanic2 = Mechanic.new("Garol", "econo")
mechanic3 = Mechanic.new("Moe", "electric")

car1= Car.new("BMW", "M5","sports", "Bob", "Carol")
car2= Car.new("Toyota", "Corolla", "electric", "John", "Moe")
car3= Car.new("Tesla", "Model3", "electric", "John", "Moe")


binding.pry
