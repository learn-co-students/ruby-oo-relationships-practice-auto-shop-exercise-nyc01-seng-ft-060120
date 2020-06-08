require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

malcolm=CarOwner.new("malcolm")
alex=CarOwner.new("alex")
johnmechanic=Mechanic.new("john", "clunker")
megmechanic=Mechanic.new("meg", "antique")
raymechanic=Mechanic.new("ray", "exotic")
suburu_wrx=Car.new("Suburu", "WRX", "clunker", malcolm, johnmechanic)
chevyimpala=Car.new("chevy", "impala", "antique", malcolm, megmechanic)
hondacivic=Car.new("honda", "civic", "clunker", alex, johnmechanic)
bentleybentayga=Car.new("bentley", "bentayga", "exotic", alex, raymechanic)
ferrarimodena=Car.new("ferrari", "modena", "exotic", alex, raymechanic)
lamborghinimercy=Car.new("lamborghini", "mercy", "exotic", alex, raymechanic)


binding.pry
