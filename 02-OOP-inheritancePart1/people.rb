class Person

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def greetings
    "Hi, my name is #{ name }"
  end

end

class Student < Person

  def learn
    'I get it!'
  end

end

class Instructor < Person

  def teach
    'Everything in Ruby is an object'
  end

end
