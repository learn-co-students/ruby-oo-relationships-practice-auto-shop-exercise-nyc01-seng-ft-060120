class Car

  attr_reader :make, :model
  attr_accessor :car_owner, :mechanic, :classification
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
    Car.all.map {|car| car.classification}
  end 

  def self.find_mechanics(classification)
    Car.all.select do |car|
      if car.classification == classification
        return car.mechanic
      end 
    end 
  end 

end