class System

  @@systems = []

  def self.create(name)
    new = System.new(name)
    @@systems << new
    new
  end

  def self.system_mass
    @@systems.map { |system| system.total_mass }.sum
  end

  def self.all
    @@systems
  end

  def initialize(name)
    @name = name

    @bodies = []
  end


  # INSTANCE METHODS
  def bodies
    @bodies
  end

  def add(body)
    if @bodies.include?(body)
      "This system contains #{body.name} already"
    else
      @bodies << body
    end
  end

  def total_mass
    @bodies.map { |body| body.mass  }.sum
  end


end

class Body

  def self.all(system)
    system.bodies.select { |bodies| bodies.class == self }.length
  end

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  def name
    @name
  end

  def mass
    @mass
  end

end

class Planet < Body


  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

end

class Start < Body

  def initialize(name, mass, type)
    super(name, mass)

    @type = type
  end
end

class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)

    @month = month
    @planet = planet
  end
end

milkyWay = System.create('The Milky Way')
alpha = System.create('Alpha Centauri')
andromeda = System.create('Andromeda')

earth = Planet.new('Earth', 15, 24, 365)
sun = Start.new('The Sun', 45, 'G-45')
moon = Moon.new("The moon", 10, 12, earth)
milkyWay.add(earth)
milkyWay.add(sun)
milkyWay.add(moon)

a_planet1 = Planet.new('Planet1', 456, 5, 879)
a_planet2 = Planet.new('Planet2', 103, 78, 856)
a_planet3 = Planet.new('Planet3', 96, 5, 45)
andromeda.add(a_planet1)
andromeda.add(a_planet2)
andromeda.add(a_planet3)

an_sun = Start.new('Androme Sun', 95, 'L-20')
an_planet1 = Planet.new('Planet1', 258, 3, 123)
an_planet2 = Planet.new('Planet2', 258, 3, 123)
an_moon1 = Moon.new('Androme Moon', 78, 45, an_planet1)
an_moon2 = Moon.new('Androme Moon', 78, 45, an_planet2)
alpha.add(an_sun)
alpha.add(an_planet1)
alpha.add(an_planet2)
alpha.add(an_moon1)
alpha.add(an_moon2)
