require_relative 'city_buildings'

class Buildings
  attr_accessor :buildings

  def initialize(buildings)
    @buildings = buildings
  end

  def select_buildings
    @buildings.select_buildings(self)
  end
end