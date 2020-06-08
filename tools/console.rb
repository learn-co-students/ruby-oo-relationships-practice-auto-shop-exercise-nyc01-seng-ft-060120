require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car_owner1 = CarOwner.new("Kate")
car_owner2 = CarOwner.new("Paola")

mechanic1 = Mechanic.new("Joe", "SUV")
mechanic2 = Mechanic.new("Bob", "SUV")

car1 = Car.new("Nissan", "Rogue", "SUV", car_owner2, mechanic1)
car2 = Car.new("Toyota", "Camry", "Sedan", car_owner1, mechanic2)
car3 = Car.new("Toyota", "Pickup", "Truck", car_owner1, mechanic1)





binding.pry
