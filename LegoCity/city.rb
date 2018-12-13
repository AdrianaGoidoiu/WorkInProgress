class City
  attr_accessor :city_name, :city_buildings, :city_color_theme, :city_size

  def initialize
    @city_name = city_name
    @city_buildings = []
    @city_color_theme = city_color_theme
    @city_size = city_size
  end

  def cost
    0
  end
end