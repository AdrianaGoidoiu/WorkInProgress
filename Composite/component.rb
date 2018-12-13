class Component

  attr_accessor :name, :number, :parent

  def initialize(name, number)
    @name = name
    @number = number
    @parent = nil
  end

  def cost(number)
    0
  end
end