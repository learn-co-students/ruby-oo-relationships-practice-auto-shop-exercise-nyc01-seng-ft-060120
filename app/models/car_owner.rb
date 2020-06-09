class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end 

  def cars
    Car.all.select {|car| car.car_owner == self}
  end 

  def mechanics 
    cars.map {|car| car.mechanic.name}
  end 

  def self.average_number_of_cars
    names_of_owners = []
    Car.all.uniq {|name| names_of_owners << name.car_owner}
    names_of_owners.count/CarOwner.all.count
  end 

end
