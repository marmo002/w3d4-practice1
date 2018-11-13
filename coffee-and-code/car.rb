class Car
  @@total_cars = []
  @@total_kms = 0

  #CLASS METHODS
  def self.all_cars
    @@total_cars
  end

  def self.total_kms
    @@total_km
  end

  def self.create(name, plates)
    new_car = Car.new(name, plates)
    @@total_cars << new_car
    new_car
  end

  def initialize(name, plates)
    @name = name
    @plates = plates

    @ignition_on = false
    @kilometrage = 0
    @crashed = false
  end

  # READERS (GETTERS)
  def kilometrage
    @kilometrage
  end

  def crashed?
    @crashed
  end

  # INSTANCE METHODS
  def start
    @ignition_on = true
  end

  def stop
    @ignition_on = false
  end

  def drive(km)
    if crashed?
      start
      @kilometrage += km
      @@total_km += km
      stop
    else
      crashed?
    end
  end

  def crash(other_car = nil)
    if other_car == nil
      self.crashed
    else
      self.crashed
      other_car.crashed
    end
  end

  # private

  def crashed
    @crashed = true
  end

end
