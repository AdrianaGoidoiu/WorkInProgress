# The InputAdapter is the 'adapter' in our application
require_relative 'berlin_city'
require_relative 'sydney_city'
require_relative 'chicago_city'
Dir["../../WorkInProgress/LegoCity/Buildings/*.rb"].each {|file| require file }
Dir["../../WorkInProgress/LegoCity/ColorTheme/*.rb"].each {|file| require file }
Dir["../../WorkInProgress/LegoCity/CitySize/*.rb"].each {|file| require file }
class InputAdapter

  attr_accessor :input, :city_name, :city_buildings, :city_color_theme, :city_size

  def initialize(input)
    @input = input
    @city_name = city_name
    @city_buildings = []
    @city_color_theme = city_color_theme
    @city_size = city_size
    @lego_city = {}
  end

  # The use_requirements method wraps the old user_input methods behind a new interface method
  def user_requirements
    @lego_city['city_name'] = select_city
    @lego_city['city_buildings'] = select_buildings
    @lego_city['city_color_theme'] = select_color_theme
    @lego_city['city_size'] = select_size
    @lego_city
  end

  def select_city
    @city_number = @input.select_city
    return @city_name = 'SydneyCity' if @city_number == 1
    return @city_name = 'BerlinCity' if @city_number == 2
    return @city_name = 'ChicagoCity' if @city_number == 3
  end

  def select_buildings
    buildings = @input.select_buildings

    city_buildings = { '1' => 'SydneyTower', '2' => 'SydneyRiver', '3' => 'SydneyOperaHouse', '4' => 'SydneyHarbourBridge', '5' => 'SydneyDeutscheBankPlace'} if @city_number == 1
    city_buildings = { '1' => 'BerlinBrandenburgGate', '2' => 'BerlinDeutscheBahnTower', '3' => 'BerlinReichstag', '4' => 'BerlinTVTower', '5' => 'BerlinVictoryColumn', '6' => 'BerlinWall'} if @city_number == 2
    city_buildings = { '1' => 'ChicagoBigRed', '2' => 'ChicagoCloudGate', '3' => 'ChicagoDuSableBridge', '4' => 'ChicagoJohnHancockCenter', '5' => 'ChicagoWillisTower', '6' => 'ChicagoWrigleyBuilding'} if @city_number == 3

    buildings.each do |building|
      @city_buildings << city_buildings[building.to_s]
    end
    @city_buildings
  end

  def select_color_theme
    color_theme = @input.select_color_theme
    return @color_theme = 'DarkBlue' if color_theme == 1
    return @color_theme = 'GiantGoldfish' if color_theme == 2
    return @color_theme = 'IDemandAPancak' if color_theme == 3
    return @color_theme = 'SummerDaydream' if color_theme == 4
    return @color_theme = 'ThoughtProvoking' if color_theme == 5
  end

  def select_size
    size = @input.select_size
    return @city_size = 'Small' if size == 1
    return @city_size = 'Medium' if size == 2
    return @city_size = 'Large' if size == 3
  end
end
