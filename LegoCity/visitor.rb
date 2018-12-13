class Visitor
  def visit(subject)
    raise NotImplementedError.new
  end
end