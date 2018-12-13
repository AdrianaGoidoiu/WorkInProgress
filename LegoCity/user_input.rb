# The UserInput class, in this example,
# acts as an 'adaptee'. It has an
# existing interface, which we want
# to adapt to a common, 'Requirements' interface.
require_relative 'buildings'
require_relative 'sydney_buildings'
require_relative 'berlin_buildings'
require_relative 'chicago_buildings'

class UserInput

  def select_city
    puts 'Please select the Lego City: '
    puts '1.Sydney'
    puts '2.Berlin'
    puts '3.Chicago'
    @city_name = 1
    #@city_name = gets.chomp.to_i
  end

  def select_buildings
    # implemented Strategy pattern
    buildings = Buildings.new(SydneyBuildings.new) if @city_name == 1
    buildings = Buildings.new(BerlinBuildings.new) if @city_name == 2
    buildings = Buildings.new(ChicagoBuildings.new) if @city_name == 3
    buildings.select_buildings
  end

  def select_color_theme
    puts 'Please select the preferred color theme'
    puts '1 Dark Blue'
    puts '2 Giant Goldfish'
    puts '3 I Demand A Pancake'
    puts '4 Summer Daydream'
    puts '5 Thought Provoking'
    @color_theme = 2
    #@color_theme = gets.chomp
  end

  def select_size
    puts 'Please select the preferred size'
    puts '1 Small'
    puts '2 Medium'
    puts '3 Large'
    @size = 3
    #@size = gets.chomp
  end
end
