# This LegoCity class _does_ leverage the Prototype pattern.
# With these two changes, the new PizzaStore supported a dynamic menu.
# To add a new type of pizza to the menu, one could create a pizza prototype
# and add it to the prototype collection at run-time.
# As long as the corresponding prototype could be found, the PizzaStore
# would be able to take order for any pizza.
class LegoCity
  attr_accessor :lego_city_prototype_collection

  def initialize
    @lego_city_prototype_collection = {}
  end

  def _clone(lego_city_definition)
    lego_city_prototype = @lego_city_prototype_collection[lego_city_definition]
    raise 'unsupported lego city type' unless lego_city_prototype

    lego_city = lego_city_prototype.clone
    #lego_city.bake
    lego_city
  end

end