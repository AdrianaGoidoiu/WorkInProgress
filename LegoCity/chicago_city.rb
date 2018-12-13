require_relative 'city'
class ChicagoCity < City
  def initialize
    puts 'Selected city: Chicago'
  end
  #the cost depends on the size
  def cost
    0
  end
end