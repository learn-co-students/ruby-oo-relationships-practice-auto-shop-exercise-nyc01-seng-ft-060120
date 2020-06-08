class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all = []
end

def self.all
  @@all
end

def cars
  Car.all.select do |car|
    car.mechanic == self
  end
end

def car_owners
  self.cars.map do |car|
    car.car_owner
  end
end

def car_owner_names
  car_owners.map do |car|
    car.name
  end
end


end
