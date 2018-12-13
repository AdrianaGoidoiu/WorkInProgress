#leaf class
require_relative 'component'

class Window < Component
  def initialize(number_windows)
    super("Window X #{number_windows}", number_windows)
  end

  def cost(number_windows)
    17.50 * number_windows
  end
end
