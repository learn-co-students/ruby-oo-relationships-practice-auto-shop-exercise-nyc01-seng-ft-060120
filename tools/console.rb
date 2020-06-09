require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#################################################
### Car Owner ###
jeff = CarOwner.new("Jeff")
lizzy = CarOwner.new("Lizzy")
marie = CarOwner.new("Marie")
bezos = CarOwner.new("Bezos")
fiona = CarOwner.new("Fiona")
#################################################
### Mechanic ###
kiki = Mechanic.new("Kiki","windows")
william = Mechanic.new("William","trunks")
layla = Mechanic.new("Layla","engines")
#################################################
### Car ###
cat = Car.new("a", "new", "beaut", jeff, kiki)
dog = Car.new("b", "old", "junk", lizzy, william)
shoe = Car.new("c", "new", "classy", marie, layla)
left = Car.new("d", "old", "disgusting", bezos, kiki)
right = Car.new("e", "new", "dirty" , fiona, william)
sock = Car.new("f", "old", "elegant", marie, william)
yawn = Car.new("g", "new", "lovely", fiona, layla)















binding.pry
