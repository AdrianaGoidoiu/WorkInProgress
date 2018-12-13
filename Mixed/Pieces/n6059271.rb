class N6059271
  attr_accessor :stock

  @stock = 10

  def initialize(number)
    @number = number
  end

  def stock
    @stock -= @number
  end

end