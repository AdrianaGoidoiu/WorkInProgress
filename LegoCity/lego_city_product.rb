require_relative 'visitable'

class LegoCityProduct
  include Visitable

  attr_accessor :name, :price

  def initialize(lego_city_product)
    @lego_city_product = lego_city_product
    @name = name
    @price = price
    @features = []
    add_component
  end
  def add_component
    @features << @lego_city_product.city_name
    @features << @lego_city_product.city_buildings
    @features << @lego_city_product.city_color_theme
    @features << @lego_city_product.city_size
  end

  def cost
    text = ''
    total_cost = 0.0
    @features.each do |feature|
      puts feature.cost
      #total_cost += feature.cost(component.number)
    end
    #text += "The TOTAL cost of a #{name} is: #{total_cost}"
    #text += "The TOTAL cost of a #{name} is: #{total_cost}"
    puts text
  end

end
