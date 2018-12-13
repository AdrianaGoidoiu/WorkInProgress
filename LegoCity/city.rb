class City
  attr_accessor :name, :buildings, :color_theme, :city_size

  def initialize
    @cname = name
    @buildings = []
    @color_theme = color_theme
    @city_size = city_size
  end

  def cost
    0
  end
end