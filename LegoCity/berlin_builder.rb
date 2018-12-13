require_relative 'berlin_city'

class BerlinBuilder < CityBuilder
  def initialize
    @city = BerlinCity.new
  end
end