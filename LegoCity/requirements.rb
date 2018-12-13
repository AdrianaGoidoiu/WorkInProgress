# The Requirements class is the new, 'target'
# interface that we want to use within
# our system.
class Requirements
  def initialize(adapter)
    @adapter = adapter
  end

  def user_requirements
    @adapter.user_requirements
  end


end
