class Car

  attr_reader :make, :model, :carowner, :mechanic, :classification

  @@all = []

  def initialize(make, model, classification, carowner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @carowner = carowner
    @mechanic = mechanic
    @@all << self
  end

  def self.classifications
    Car.all.map do |car|
    car.classification
    end
  end

  def self.find_mechanics(classification)
    specialty = Mechanic.all.select do |mechanic|
      mechanic.specialty == classification
    end
  end 
  

  def self.all
    @@all
  end

end
