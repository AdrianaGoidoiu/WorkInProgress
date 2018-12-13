require_relative 'city_buildings'

class SydneyBuildings < CityBuildings
  def select_buildings(context)
    puts 'Please select the buildings you want. Ex.[1, 2, 3, 4, 5] '
    puts '1. Sydney Tower'
    puts '2. Sydney River'
    puts '3. Sydney Opera House'
    puts '4. Sydney Harbour Bridge'
    puts '5. Sydney Deutsche Bank Place'
    context.buildings = [1, 2, 3, 4, 5]
  end
end