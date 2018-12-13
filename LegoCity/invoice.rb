class Invoice < Visitor
  def visit(subject)
    puts "#{subject.name}: #{subject.price}"
  end
end