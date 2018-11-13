class Cat

  REGULAR_ENERGY = 10

  def initialize(name)
    @name = name

    @fed = false
    @entertained = false
    @adopted = false
    @energy = REGULAR_ENERGY
  end

  # READER (GETTERS)
  def fed?
    @fed
  end

  def entertained?
    @entertained
  end

  def adopted?
    @adopted
  end

  # WRITTER (SETTERS)

  # INSTANCE METHODS
  def feed
    @energy += REGULAR_ENERGY
    @fed = true
  end

  def rested?
    @energy >= 10
  end

  def play
    @energy -=10
    @entertained = true
  end

  def adopt
    @adopted = true
  end

  def happy?
    if fed? && rested? && entertained? && adopted?
      true
    else
      false
    end
  end

  def pet
    happy? ? "purr purr purr" : "hiss hiss hiss"
  end

end

# marley = Cat.new('marley')
