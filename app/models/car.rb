class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@all << self
  end

  def assign_mechanic(mechanic)
    @mechanic = mechanic
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map{|car| car.classification}.uniq
  end

  def self.find_mechanics(classification)
    Mechanic.all.select{|mechanic| mechanic.specialty == classification}
  end

end
