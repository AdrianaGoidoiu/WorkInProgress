module Visitable #reprs the interface
  def accept(visitor)
    visitor.visit(self)
  end
end