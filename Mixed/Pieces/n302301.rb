class N302301
  attr_accessor :stock

  @stock = 7

  def initialize(number)
    @number = number
  end

  def stock
    @stock -= @number
  end
end