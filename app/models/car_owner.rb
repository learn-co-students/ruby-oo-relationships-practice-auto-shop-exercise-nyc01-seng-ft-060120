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
      car.car_owner == self
    end
  end

  def mechanics
    cars.map do |car|
      car.mechanic
    end
  end

  def self.average_number_of_cars
    Car.all.length.to_f / @@all.length.to_f
  end



end
