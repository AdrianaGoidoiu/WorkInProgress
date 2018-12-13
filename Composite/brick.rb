#leaf class
require_relative 'component'

class Brick < Component
  def initialize(number_bricks)
    super("Brick X #{number_bricks}", number_bricks)
  end

  def cost(number_bricks)
    10.00 * number_bricks
  end
end