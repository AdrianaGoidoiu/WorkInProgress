# the composite of the leaf classes
# The composite is a component, but its also a higher-level object that is built from
# sub components in a manner consistent with the law of demeter.
# Worded a little differently, composites are just complex tasks made up of sub tasks
require_relative 'brick'
require_relative 'window'
require_relative 'door'

class Invoice < Component
  def initialize(name, number)
    super(name, number)
    @sub_components = []
  end

  def add_sub_component(component)
    @sub_components << component
    component.parent = self
  end

  def remove_sub_component(component)
    @sub_components.delete(component)
    component.parent = nil
  end

  def print_details
    text = ''
    total_cost = 0.0
    @sub_components.each do |component|
      total_cost += component.cost(component.number)
      text += "#{component.name}: #{component.cost(component.number)}\n"
    end
    text += "The TOTAL cost of a #{name} is: #{total_cost}"
    puts text
  end
end

