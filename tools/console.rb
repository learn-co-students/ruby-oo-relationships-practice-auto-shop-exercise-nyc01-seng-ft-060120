require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car_owner_one = CarOwner.new("Max")
car_owner_two = CarOwner.new("Sam")

car_one = Car.new("Car", "V1", "Sport", car_owner_one)
car_two = Car.new("Car", "V2", "Sport", car_owner_two)
car_three = Car.new("Car", "V3", "SUV", car_owner_one)

mechanic_one = Mechanic.new("Amanda", "Sport")
mechanic_two = Mechanic.new("Jeff", "SUV")

car_one.assign_mechanic(mechanic_one)
car_two.assign_mechanic(mechanic_one)
car_three.assign_mechanic(mechanic_two)

Car.all
Car.classifications
Car.find_mechanics("Sport")

car_owner_one.cars
car_owner_one.mechanics
CarOwner.all
CarOwner.average_number_of_cars

mechanic_one.cars
mechanic_one.car_owners
mechanic_one.car_owners_names
Mechanic.all

binding.pry
