require 'pry'
require_relative 'farm'

class CRM

  def initialize
    @farm = Farm.new()
    while true
      options
    end
  end

  def options
    puts
    puts  "---------------------------------"
    puts "Options"
    puts  "field -> adds a new field"
    puts  "pasture -> adds pasture to farm"
    puts  "harvest -> harvests crops, animals and adds to total harvested"
    puts  "status -> displays some information about the farm"
    puts  "relax -> provides lovely descriptions of your fields"
    puts  "exit -> exits the program"
    puts  "---------------------------------"
    puts

    user_choice
  end

  def user_choice
    choice = gets.chomp.to_s
    case choice
    when "field" then add_new_field
    when "pasture" then add_pasture
    when "harvest" then harvest_fields
    when "status" then status
    when "relax" then relax
    when "exit"
      puts  "Exiting..."
      exit
    end
  end

  def add_new_field
    puts  "---------------------------------"
    puts "What kind of field is it?"
    type = gets.chomp
    puts "How large is the field in hectares?"
    hectares = gets.chomp.to_i
    puts "How much #{ type } you get per hectare?"
    production = gets.chomp.to_i

    field = Field.new(type, hectares, production)
    @farm.add_good(field)
    puts
    puts "Added a #{ type } field of #{ hectares } hectares!"
    puts
  end

  def add_pasture
    puts  "---------------------------------"
    puts "What kind pasture is it?"
    name = gets.chomp.to_s
    puts "How many #{ name } altogether?"
    number = gets.chomp.to_i

    pasture = Pasture.new(name, number)
    @farm.add_good(pasture)
    puts
    puts "Added #{ number } #{ name } to the farm!"
    puts

  end

  def harvest_fields
    @farm.harvest
  end

  def status
    @farm.status
  end

  def relax
    @farm.relax
  end

end
