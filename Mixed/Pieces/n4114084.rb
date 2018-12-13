class N4114084
  attr_accessor :stock

  @stock = 3

  def initialize(number)
    @number = number
  end

  def stock
    @stock -= @number
  end

end