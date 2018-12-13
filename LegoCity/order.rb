class Order
  def initialize(lego_product)
    @lego_product = lego_product
    @products = []
  end

  def add(component)
    @products << component
  end


  def accept(visitor)
    @products.each { |component| component.accept(visitor)}
  end
end
