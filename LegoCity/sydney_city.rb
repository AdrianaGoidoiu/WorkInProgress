require_relative 'city'
class SydneyCity < City
  def initialize
    puts 'Selected: Sydney'
  end
  def cost
    100
  end
end