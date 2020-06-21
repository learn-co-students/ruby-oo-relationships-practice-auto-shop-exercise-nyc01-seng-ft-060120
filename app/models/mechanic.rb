class Mechanic

  attr_reader :name, :specialty

  @@all = []

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
      car.mechanic == @name
    end
  end

  def car_owners
    cars.map do |car|
      car.owner
    end
  end

  def car_owners_names
    car_owners.map do |owner|
      owner.name
    end
  end

end
