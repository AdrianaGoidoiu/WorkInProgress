#leaf class
require_relative 'component'

class Door < Component
  def initialize(number_doors)
    super("Door X #{number_doors}", number_doors)
  end

  def cost(number_doors)
    12.50 * number_doors
  end
end