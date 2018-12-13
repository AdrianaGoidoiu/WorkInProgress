class N4114026
  attr_accessor :stock

  @stock = 5

  def initialize(number)
    @number = number
  end

  def stock
    @stock -= @number
  end

end