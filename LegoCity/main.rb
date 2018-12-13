require_relative 'sydney_builder'
require_relative 'Buildings/sydney_opera_house'
require_relative 'Buildings/sydney_deutsche_bank_place'
require_relative 'Buildings/sydney_river'
require_relative 'Buildings/sydney_tower'
require_relative 'Buildings/sydney_harbour_bridge'
require_relative 'city_builder'
require_relative 'ColorTheme/i_demand_a_pancake'
require_relative 'CitySize/large'
require_relative 'city'

class Main
  lego_city = SydneyBuilder.new
  buildings = [SydneyTower.new, SydneyRiver.new, SydneyOperaHouse.new, SydneyDeutscheBankPlace.new, SydneyHarbourBridge.new]

  buildings.each do |i|
    lego_city.add_preferred_buildings(i)
  end
  lego_city.add_preferred_color_theme(IDemandAPancake)
  lego_city.add_preferred_size(Large)

  user_input = UserInput.new
  input_adapter = InputAdapter.new(user_input)
  requirements = Requirements.new(input_adapter)


  #comunication with the user will be an adaptor
  #every building should implement the prototype pattern

=begin
  puts "Please select the Lego City: "
  puts "1.Sydney"
  puts "2.Berlin"
  puts "3.Chicago"
  city = gets.chomp.to_i
  puts city
  if city== 1
    puts "Please select the buildings you want. Ex.[1, 2, 3, 4, 5] "
    puts "1. Sydney Tower "
    puts "2. Sydney River"
    puts "3. Sydney Opera House"
    puts "4. Sydney Harbour Bridge "
    puts "5. Sydney Deutsche Bank Place"
    buildings = [gets]
    puts buildings
    lego_city = SydneyBuilder.new

    buildings.each do |building|
      puts building
      lego_city.add_preferred_buildings(building)
    end
    lego_city.add_preferred_color_theme(IDemandAPancake)
    lego_city.add_preferred_size(Large)
  end
  if city == 2
    puts "Please select the buildings you want. Ex.[1, 2, 3, 4, 5] "
    puts "1. Berlin Brandenburg Gate "
    puts "2. Berlin Deutsche Bahn Tower"
    puts "3. Berlin Reichstag"
    puts "4. Berlin TV Tower"
    puts "5. Berlin Victory Column"
    puts "6. Berlin Wall"
    buildings = [gets]
    theme = preferred_color_theme
    size = preferred_size

    lego_city = BerlinBuilder.new

    buildings.each do |building|
      puts building
      lego_city.add_preferred_buildings(building)
    end
    lego_city.add_preferred_color_theme(theme)
    lego_city.add_preferred_size(size)
  end
  if city == 3
    puts "Please select the buildings you want. Ex.[1, 2, 3, 4, 5] "
    puts "1. Chicago Wrigley Building "
    puts "2. Chicago Big Red"
    puts "3. Chicago Cloud Gate"
    puts "4. Chicago Willis Tower"
    puts "5. Chicago John Hancock Center"
    puts "6. Chicago Du Sable Bridge"
    buildings = [gets]
    puts buildings
    theme = preferred_color_theme
    size = preferred_size

    lego_city = ChicagoBuilder.new

    buildings.each do |building|
      puts building
      lego_city.add_preferred_buildings(building)
    end
    lego_city.add_preferred_color_theme(theme)
    lego_city.add_preferred_size(size)
  end


  def preferred_color_theme
    puts "Please select the preferred color theme"
    puts "1. Dark Blue"
    puts "2. Giant Goldfish"
    puts "3. I Demand A Pancake"
    puts "4. Summer Daydream"
    puts "5. Thought Provoking"
    theme = gets.chomp
  end
  def preferred_size
    puts "Please select the preferred size"
    puts "1. Small"
    puts "2. Medium"
    puts "3. Large"
    size = gets.chomp
  end
=end
end