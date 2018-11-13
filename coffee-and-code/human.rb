require './cat.rb'

class Human

  def initialize(name)
    @name = name
    @cats = []
  end

  # READERS (GETTERS)
  def cats
    @cats
  end

  # INSTANCE METHODS
  def adopt(cat)
    cat.adopt
    @cats << cat
  end

  def spoile_cats
    @cats.each do |cat|
      cat.feed
      cat.play
      cat.pet
    end
  end

  def crazy?
    @cats.length > 5
  end

end
