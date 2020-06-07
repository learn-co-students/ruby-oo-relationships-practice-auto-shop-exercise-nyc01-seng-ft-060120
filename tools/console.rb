require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("Jimmy")
owner2 = CarOwner.new("Anthony")
owner3 = CarOwner.new("Tamara")
owner4 = CarOwner.new("Jackie")

mechanic1 = Mechanic.new("Tom", "sedan")
mechanic2 = Mechanic.new("Amanda", "coupe")
mechanic3 = Mechanic.new("Steve", "SUV")
mechanic4 = Mechanic.new("Emily", "sportscar")
mechanic5 = Mechanic.new("Cari", "sedan")

car1 = Car.new("BMW", "2-Series", "coupe", owner1, mechanic2)
car2 = Car.new("BMW", "M2", "coupe", owner2, mechanic2)
car3 = Car.new("Honda", "Accord", "sedan", owner3, mechanic1)
car4 = Car.new("Toyota", "Camry", "sedan", owner4, mechanic5)
car5 = Car.new("Ford", "Escape", "SUV", owner4, mechanic3)
car6 = Car.new("Jeep", "Wrangler", "SUV", owner3, mechanic3)
car7 = Car.new("Bugatti", "La Voiture Noire", "sportscar", owner2, mechanic4)
car8 = Car.new("Rolls-Royce", "Sweeptail", "sportscar", owner1, mechanic4)

Pry.start
