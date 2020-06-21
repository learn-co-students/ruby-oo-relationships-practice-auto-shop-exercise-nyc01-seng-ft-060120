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
    Car.all.select do |car| 
      car.owner == @name
    end
  end

  def mechanics
    cars.map do |car| 
      car.mechanic
    end
  end

  def self.average_number_of_cars
    Car.all.length/@@all.length
  end
end

