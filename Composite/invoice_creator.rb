require_relative 'invoice'

class InvoiceCreator < Invoice

  def initialize(name, number_bricks, number_windows, number_doors)
    super(name, 0)
    add_sub_component(Brick.new(number_bricks))
    add_sub_component(Window.new(number_windows))
    add_sub_component(Door.new(number_doors))
  end

end
