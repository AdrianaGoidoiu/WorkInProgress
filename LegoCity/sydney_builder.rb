require_relative 'sydney_city'
require_relative 'city_builder'

class SydneyBuilder < CityBuilder
  def initialize
    @city = SydneyCity.new
  end

  def add_preferred_buildings(buildings)
    @city.buildings = buildings
  end

  def add_preferred_color_theme(theme)
    @city.color_theme = theme
  end

  def add_preferred_size(size)
    @city.city_size = size
  end

end