require_relative 'city'
class BerlinCity < City
  def initialize
    puts 'Selected: Berlin'
  end
  def cost
    100
  end
end