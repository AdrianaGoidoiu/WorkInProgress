class N6097801
  attr_accessor :stock

  @stock = 4

  def initialize(number)
    @number = number
  end

  def stock
    @stock -= @number
  end

end