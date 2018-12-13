require_relative 'sydney_builder'

class Main
  sydney_builder = SydneyBuilder.new
  sydney_builder.sydney_river
  sydney_builder.sydney_opera_house
  sydney_builder.sydney_harbour_bridge
  sydney_builder.sydney_tower
  sydney_builder.deutsche_bank_place


# Reference the fully configured structure
  sydney = sydney_builder.sydney
end
