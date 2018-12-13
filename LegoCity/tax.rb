class Tax
  include Visitable
  attr_accessor :price
  def initialize(price)
    @price = price
  end
  def name
    "tax"
  end
end