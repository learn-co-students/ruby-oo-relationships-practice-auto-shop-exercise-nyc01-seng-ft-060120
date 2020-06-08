class Mechanic

  attr_reader :name, :specialty

  @@all=[]

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
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
  cars.map do |car|
    car.carowner
  end
end

def car_owners_names
  cars.map do |car|
    car.carowner.name
  end
end

end
