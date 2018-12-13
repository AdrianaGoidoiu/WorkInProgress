#each builder has an interface that let us specify the configuration of the new object step by step
#
require_relative 'city'

class CityBuilder
  attr_reader :city

  def initialize
    @city = City.new(city_name, buildings, color_theme, city_size)
  end

  def add_preferred_buildings(building)
    @city.buildings << building
  end

  def add_preferred_color_theme(theme)
    @city.color_theme = theme
  end

  def add_preferred_size(size)
    @city.city_size = size
  end
end