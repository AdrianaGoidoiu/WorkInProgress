class BerlinBuildings < CityBuildings
  def select_buildings
    puts "Please select the buildings you want. Ex.[1, 2, 3, 4, 5] "
    puts "1. Berlin Brandenburg Gate "
    puts "2. Berlin Deutsche Bahn Tower"
    puts "3. Berlin Reichstag"
    puts "4. Berlin TV Tower"
    puts "5. Berlin Victory Column"
    puts "6. Berlin Wall"
    buildings = [gets]
  end
end