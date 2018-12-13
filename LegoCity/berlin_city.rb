require_relative 'city'
class BerlinCity < City
  def initialize
    puts 'Selected city: Berlin'
  end
  #the cost depends on the size
  def cost
    0
  end
end