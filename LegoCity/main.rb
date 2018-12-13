require_relative 'sydney_builder'
require_relative 'Buildings/sydney_opera_house'
require_relative 'Buildings/sydney_deutsche_bank_place'
require_relative 'Buildings/sydney_river'
require_relative 'Buildings/sydney_tower'
require_relative 'Buildings/sydney_harbour_bridge'
require_relative 'city_builder'
require_relative 'ColorTheme/i_demand_a_pancake'
require_relative 'CitySize/large'
require_relative 'city'
require_relative 'user_input'
require_relative 'input_adapter'
require_relative 'requirements'
require_relative 'lego_city'
require_relative 'lego_city_product'
require_relative 'visitable'

class Main
  # implemented Adapter pattern to convert the user input in meaningful data for the programme

  def get_user_requirements
    user_input = UserInput.new
    input_adapter = InputAdapter.new(user_input)
    requirements = Requirements.new(input_adapter)
    user_requirements = requirements.user_requirements
  end
  def build_lego_city(city)
    # Configure the lego city using a city builder instance
    city_builder = CityBuilder.new
    city_builder.add_preferred_city(city['city_name'])
    city_builder.add_preferred_buildings(city['city_buildings'])
    city_builder.add_preferred_color_theme(city['city_color_theme'])
    city_builder.add_preferred_size(city['city_size'])
    city_builder.city
  end

  def build_prototypes(city_name, lego_city_prototype)
    prototype = LegoCity.new
    prototype.lego_city_prototype_collection[city_name] = lego_city_prototype
    prototype._clone(city_name)
  end

  def print_invoice(city_builder)
    lego_city_product = LegoCityProduct.new(city_builder)
    lego_city_product.cost
    #"#{tax = Tax.new(price:10)
    #"discount = Discount.new
    #order = Order.new(city_builder)
    #order.add(p)
    #order.add(t)

    #order.accept(PrintInvoice.new)

  end

end

#adapter pattern
req = Main.new
city = req.get_user_requirements
city_name = city['city_name']

#builder pattern
city_builder = req.build_lego_city(city)

# LegoCity instances cloned from the LegoCity prototype.
# We are passing in the type of product we wish to create.
lego_city_instance_a = req.build_prototypes(city_name, city_builder)
lego_city_instance_b = req.build_prototypes(city_name, city_builder)


#visitor pattern
req.print_invoice(city_builder)
