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

# When the learn method was called on the Instructor instance,
# the undefined method error was triggered because the learn mehod
# was set inside the student class only and Instructor inherance only from the Person class
# The same thing happends with the student instance calling the teach method
