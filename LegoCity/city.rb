class City
  attr_accessor :city_name, :buildings, :color_theme, :city_size

  def initialize(city_name, buildings=[], color_theme, city_size)
    @city_name = city_name
    @buildings = buildings
    @color_theme = color_theme
    @city_size = city_size
  end
end