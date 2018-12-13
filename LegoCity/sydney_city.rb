require_relative 'city'
class SydneyCity < City
  def initialize
    puts 'Selected city: Sydney'
  end
  #the cost depends on the size
  def cost
    0
  end
end