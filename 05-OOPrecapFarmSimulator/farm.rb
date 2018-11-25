class Farm

  # CLASS METHODS

  # INITIALIZE METHODS
  def initialize

    @goods = []
    @total_foods = 0
    @total_animals = 0
  end

  # READERS (GETTERS)
  def goods
    @goods
  end

  # WRITTERS (SETTERS)

  # INSTANCE METHODS
  def add_good(good)
    if good.class == Pasture
      @total_animals += good.number
      @goods << good
    else
      @goods << good
    end
  end

  def harvest
    if goods.length > 0
      # iterate through each field
      goods.each do |good|
        if good.class == Field
          @total_foods += good.production
          puts "Harvesting #{good.production} food from #{good.hectares} hectare of #{good.type}."
        else
          puts "We had #{ good.number } #{good.name}."
          @total_animals += good.breed
          puts "After harvesting, we now have #{ good.number } #{good.name}."
        end
      end
    end
    total_goods
  end

  def status
    if goods.length > 0
      goods.each do |good|
        if good.class == Field
          puts "- #{ good.type } field is #{ good.hectares } hectares."
        else
          puts "- We have #{ good.number } #{ good.name }."
        end
      end
    end

    total_goods
  end

  def total_goods
    puts "The farm has #{@total_foods} harvested food, and"
    puts "#{@total_animals} animal so far"
  end

  def relax
    if goods.length > 0
      puts "I love to look at the horizon over:"
      goods.each do |good|
        if good.class == Field
          puts "- #{good.hectares} hectares of #{good.type}"
        else
          puts "- #{good.number} #{good.name} running around"
        end
      end
    else
      puts "The future looks promising. OK! Break is done. Gotta go back to work"
    end
  end

end

class Field

  def initialize(type, hectares, production)
    @type = type
    @hectares = hectares
    @production = production
  end

  # GETTERS (READERS)
  def type
    @type
  end

  def hectares
    @hectares
  end

  # WRITTES (SETTERS)

  # INSTANCE METHODS
  def production
    @hectares * @production
  end

end

class Pasture

  def initialize(name, number)
    @name = name
    @number = number
  end

  def name
    @name
  end

  def number
    @number
  end

  def breed
    increase_of = rand(1...number)
    @number += increase_of
    increase_of
  end

end
