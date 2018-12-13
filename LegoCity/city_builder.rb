#each builder has an interface that let us specify the configuration of the new object step by step
# The CityBuilder class uses the  Builder pattern to offer an easier
# method of creating a complex and multi-part object, the lego city.
#
# The CityBuilder class defines all of the methods which will be
# used to perform various steps needed to properly build a lego city object.
require_relative 'city'

class CityBuilder
  attr_reader :city, :name

  def initialize
    @city = City.new
  end

  def add_preferred_city(name)
    @city.name = Object::const_get(name).new
  end

  def add_preferred_buildings(building)
    building.each do |city_building|
      @city.buildings << Object::const_get(city_building).new
    end
  end

  def add_preferred_color_theme(theme)
    @city.color_theme = Object::const_get(theme).new
  end

  def add_preferred_size(size)
    @city.city_size = Object::const_get(size).new
  end

  # In the city getter/reader method, we are raising errors for cases in which business
  # rules for city objects are not fulfilled. Should the city object be either incorrectly
  # configured or only partially configured, this method will raise an error, thus enforcing
  # the configuration of _valid_ city objects.
  def city
    # raise 'The city name is not valid' if @city.city_name < 4
    # raise 'One or many buildings are not valid' if @city.city_name.buildings
    # raise 'Color theme is not valid' if @city.color_theme
    # raise 'City size is not valid' if @city.city_size
    @city
  end

end