require_relative 'chicago_city'

class ChicagoBuilder < CityBuilder

  def initialize
    @city = ChicagoCity.new
  end
end