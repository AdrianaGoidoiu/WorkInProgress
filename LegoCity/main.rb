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
end

#adapter pattern
req = Main.new
city = req.get_user_requirements
#builder pattern
city_builder = req.build_lego_city(city)

# LegoCity instances cloned from the LegoCity prototype.
# We are passing in the type of product we wish to create.
lego_city_prototype = LegoCity.new
lego_city_instance_a = lego_city_prototype._clone(city_builder)


#rule pattern