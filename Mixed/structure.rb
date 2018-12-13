# The structure class represents the 'abstraction' in this example of the Bridge pattern.
class Structure
  # The implementor for the structure is passed in on initialization.
  def initialize(implementor)
    @implementor = implementor
  end
end
