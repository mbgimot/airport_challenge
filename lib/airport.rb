require_relative 'plane'

class Airport
  attr_reader :planes
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @planes = []
    @capacity = capacity
  end


  def take_off(plane)
    plane.flying = true
    @planes.delete(plane)
  end

  def land(plane)
    plane.flying = false
    @planes << plane
  end



end
