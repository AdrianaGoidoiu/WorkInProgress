class ChicagoBuildings < CityBuildings
  def select_buildings
    puts "Please select the buildings you want. Ex.[1, 2, 3, 4, 5] "
    puts "1. Chicago Wrigley Building "
    puts "2. Chicago Big Red"
    puts "3. Chicago Cloud Gate"
    puts "4. Chicago Willis Tower"
    puts "5. Chicago John Hancock Center"
    puts "6. Chicago Du Sable Bridge"
    buildings = [gets]
  end
end