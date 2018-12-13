class N4624086
  attr_accessor :stock

  @stock = 4

  def initialize(number)
    @number = number
  end

  def stock
    @stock -= @number
  end

end