# The ShapeImplementor class represents the 'Implementor' in the Bridge pattern.

class StructureImplementor
  # Abstract methods are defined, with the 'concrete implementors' (subclasses)
  # of this class (ShapeImplementor) must implement.

  def sydney_river
    raise '#sydney_river must be defined.'
  end

  def sydney_opera_house
    raise '#sydney_opera_house must be defined.'
  end

  def sydney_harbour_bridge
    raise '#sydney_harbour_bridge must be defined.'
  end

  def sydney_tower
    raise '#sydney_tower must be defined.'
  end

  def deutsche_bank_place
    raise '#deutsche_bank_place must be defined.'
  end
end