require_relative 'city_buildings'

class Buildings
  attr_accessor :city_buildings

  def initialize(city_buildings)
    @city_buildings = city_buildings
  end

  def select_buildings
    @city_buildings.select_buildings
  end
end