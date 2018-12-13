class N6122047
  attr_accessor :stock

  @stock = 2

  def initialize(number)
    @number = number
  end

  def stock
    @stock -= @number
  end
end