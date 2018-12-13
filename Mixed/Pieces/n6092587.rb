class N6092587
  attr_accessor :stock

  @stock = 8

  def initialize(number)
    @number = number
  end

  def stock
    @stock -= @number
  end

end