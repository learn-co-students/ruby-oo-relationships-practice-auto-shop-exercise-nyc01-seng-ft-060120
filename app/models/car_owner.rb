class CarOwner

  attr_reader :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.carowner == self
    end
  end

  def mechanics
    cars.map do |car|
      car.mechanic
    end
  end

  def self.average_number_of_cars
    total_carowners=Car.all.select do |car|
      car.carowner.name
    end 
    binding.pry
    (total_carowners.length / Car.all.length).to_f
  end



end
