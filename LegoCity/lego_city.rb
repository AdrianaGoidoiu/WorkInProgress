# This LegoCity class _does_ leverage the Prototype pattern.
class LegoCity
  # The #_clone method is central to the Prototype pattern. It is the method that is designed to
  # be invoked whenever a new LegoCity object is desired. The cloning that occurs does not have
  # to invoke the ruby #clone method. In our case, we've used the method name of #_clone, so as not
  # to interfere with the Ruby method of #clone.
  # Here, we are not using the built in Ruby #clone method, nor are we using the #dup method, though if that were to
  # fulfill the intent of our class design for LegoCity, we could fulfill the intent of the Prototype pattern using
  # either of those methods..m

  attr_accessor :lego_city_prototype_collection


  def initialize
    @lego_city_prototype_collection = {}
  end

  def _clone(lego_city_definition)
    puts lego_city_definition


    lego_city_prototype = lego_city_prototype_collection[lego_city_definition]
    raise 'unsupported lego city type' unless lego_city_prototype

    lego_city = lego_city_prototype.clone
    lego_city
  end

=begin
  def _clone(lego_city_definition)
    puts lego_city_definition.color_theme
    LegoCity.new(
      self.city_name,
      self.color_theme,
      self.color_theme
    )
  end
=end
end
